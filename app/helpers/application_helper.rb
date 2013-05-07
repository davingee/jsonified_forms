module ApplicationHelper

  def render_form(form_name, f, options={}) # options for eventually adding if and unless variables ex user logged in or somthing the f.object can not access
    form_json = JSON.parse( IO.read("#{Rails.root}/app/forms_json/#{form_name}.json") )
    base_locals = {
      :model => f.object,
      :form => f
    }
    form_json['inputs'].each do |field_name, field_hash|
      catch :to_next do  #:missingyear acts as a label
        field = {}
        field[:field] = field_name.to_sym
        field_hash.each do |key, value|
          if value.is_a?(Hash)
            if key == "if" or key == "unless"
              value.each do |object, method|
                if options.blank?
                  (key == "unless") ? (throw :to_next if f.object.send(method)) : (throw :to_next unless f.object.send(method)) 
                end
              end
            else
              field[key.to_sym] = value
            end
          else
            field[key.to_sym] = value.to_sym
          end
        end
        concat render :partial => "/shared/control_group", :locals => base_locals.merge(field)
      end
    end
    nil
  end

end
