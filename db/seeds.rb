# frozen_string_literal: true

if Rails.env.development?
  %w[
    admin
    customer
  ].each do |model|
    load(Rails.root.join('db', 'seeds', "#{model}.rb"))
  end
end
