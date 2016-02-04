module SimplePaginator
  class Railtie < Rails::Railtie
    initializer "simple_paginator" do |app|
      ActiveSupport.on_load :active_record do
        require 'simple_paginator/active_record'
      end

      ActiveSupport.on_load :action_view do
        require 'simple_paginator/action_view'
      end
    end
  end
end
