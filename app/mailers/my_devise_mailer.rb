class MyDeviseMailer < PostageApp::Mailer
    include Devise::Mailers::Helpers

    def confirmation_instructions(record, token, opts)
      # PostageApp specific elements (example):
      postageapp_template 'my-signup-confirmation'
      postageapp_variables :email => record.email,
                           :link  => user_confirmation_url(:confirmation_token => record.confirmation_token)

      devise_mail(record, :confirmation_instructions)
    end

    def reset_password_instructions(record, token, opts)
      # PostageApp specific elements (example):
      postageapp_template 'my-password-reset'
      postageapp_variables :name => record.name ||= record.email,
                           :link => password_url(:reset_password_token => record.reset_password_token)

      devise_mail(record, :reset_password_instructions)
    end

    def unlock_instructions(record, token, opts)
      # PostageApp specific elements (example):
      postageapp_template 'my-unlock-instructions'
      postageapp_variables :name => record.name ||= record.email,
                           :link => unlock_url(:unlock_token => record.unlock_token)
      devise_mail(record, :unlock_instructions)
    end

  protected
    # Ensures template subject is used instead of the default devise mailer subject.
    def headers_for(action, opts)
      headers = super
      headers[:subject] = ''
      headers
    end
  end