FactoryBot.define do
  factory :post, class: Hash do
    initialize_with {
      {
        id: generate(:id),
        type: 'post',
        attributes: {
          title: generate(:title),
          description: generate(:description),
          created_at: DateTime.current.to_s,
          cover_image: generate(:url)
        }
      }
    }
  end
end
