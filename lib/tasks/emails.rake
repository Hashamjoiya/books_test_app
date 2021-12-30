# frozen_string_literal: true

namespace :emails do
  desc 'Send Top 3 tagged books to user'
  task TopTaggedBooks: :environment do
    top_books = Book
                .left_joins(:tags)
                .group(:id)
                .order('COUNT(tags.id) DESC')
                .limit(3)

    User.find_each do |user|
      TopBooksMailer.top_books_mailer(user, top_books).deliver
    end
  end
end
