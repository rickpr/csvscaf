class Experiment < ActionMailer::Base
  def experiment_mail(mailname: nil, mailemail: nil)
       @personname = mailname
       mail :subject => "Web Application Architectures (Coursera)#{mailname}",
       :to => mailemail,
       :from_name => "Web Application Architectures",
       :from => "webappmooc@gmail.com"
  end
end
