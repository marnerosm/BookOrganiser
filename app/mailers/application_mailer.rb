class ApplicationMailer < ActionMailer::Base
  default to: 'info@books.com', from: 'info@books.com'
  layout 'mailer'
end
