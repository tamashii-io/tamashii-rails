# frozen_string_literal: true

# :nodoc:
class CreateLetsencryptCertificates < ActiveRecord::Migration<%= migration_version %>
  def change
    create_table :tamashii_machine do |t|
      t.string   :serial_name
      t.timestamps
    end
  end
end
