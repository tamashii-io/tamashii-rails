# =rozen_string_literal: true

require 'rails/generators'
require 'rails/generators/migration'
require 'rails/generators/active_record'

module Tamashii
  module Generators
    # :nodoc:
    class InstallGenerator < ::Rails::Generators::Base
      include ::Rails::Generators::Migration

      source_root File.expand_path('../templates', __FILE__)

      def self.next_migration_number(path)
        ActiveRecord::Generators::Base.next_migration_number(path)
      end

      def copy_migrations
        migration_template 'migration.rb',
                           'db/migrate/create_letsencrypt_certificates.rb'
      end

      def rails5?
        ::Rails::VERSION::MAJOR == 5
      end

      def migration_version
        "[#{::Rails::VERSION::MAJOR}.#{::Rails::VERSION::MINOR}]" if rails5?
      end
    end
  end
end
