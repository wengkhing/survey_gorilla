require 'faker'

if User.all.count == 0
  50.times do
    User.create(name: Faker::Internet.user_name, password: SecureRandom.urlsafe_base64(6))
  end
end

if Survey.all.count == 0
  User.all.each do |u|
    (1 + rand(3)).times do
      Survey.create(title: Faker::Lorem.sentence, about: Faker::Lorem.paragraph, user: u)
    end
  end
end

if Question.all.count == 0
  Survey.all.each do |s|
    (5 + rand(6)).times do
      Question.create(text: Faker::Lorem.sentence, survey: s)
    end
  end
end

if Choice.all.count == 0
  Question.all.each do |q|
    (2 + rand(3)).times do
      Choice.create(text: Faker::Lorem.words.join(" "), question: q)
    end
  end
end

if Surveying.all.count == 0
  Survey.all.each do |s|
    25.times do
      temparr = []
      u = User.find(rand(User.all.count) + 1)
      unless temparr.include? u
        Surveying.create(user: u, survey: s)
        temparr << u
      end
    end
  end
end

if Answer.all.count == 0
  Surveying.all.each do |sg|
    sg.survey.questions.each do |q|
      c = q.choices.shuffle.first
      Answer.create(surveying: sg, choice: c)
    end
  end
end