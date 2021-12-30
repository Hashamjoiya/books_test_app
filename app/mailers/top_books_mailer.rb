# frozen_string_literal: true

class TopBooksMailer < ApplicationMailer
  default from: 'test@project.com'
  layout 'mailer'

  def top_books_mailer(user, books)
    return if !user && !books

    @top_books = books

    mail(to: user.email, subject: 'Top Books')
  end
end
