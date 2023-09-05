Hexlet status:  
[![Actions Status](https://github.com/Ferrayd/rails-project-63/workflows/hexlet-check/badge.svg)](https://github.com/Ferrayd/rails-project-63/actions)  
CI status:  
[![Makefile CI](https://github.com/Ferrayd/rails-project-63/actions/workflows/CI.yml/badge.svg)](https://github.com/Ferrayd/rails-project-63/actions/workflows/CI.yml)

Примеры:

User = Struct.new(:name, :job, :gender, keyword_init: true)
user = User.new name: 'rob', job: 'hexlet', gender: 'm'
HexletCode.form_for user do |f|
  f.input :name
  f.input :job, as: :text
end
=>
# <form action="#" method="post">
#   <input name="name" type="text" value="rob">
#   <textarea name="job" cols="20" rows="40">hexlet</textarea>
# </form>


Для полей можно указать дополнительные атрибуты в виде хеша последним параметром:

```
HexletCode.form_for user, url: '#' do |f|
  f.input :name, class: 'user-input'
  f.input :job
end
=>
# <form action="#" method="post">
#   <input name="name" type="text" value="rob" class="user-input">
#   <input name="job" type="text" value="">
# </form>
```

У полей могут быть дефолтные значения, которые можно переопределить:

```
HexletCode.form_for user do |f|
  f.input :job, as: :text
end
=>
# <form action="#" method="post">
#   <textarea name="job" cols="20" rows="40">hexlet</textarea>
# </form>
HexletCode.form_for user, url: '#' do |f|
  f.input :job, as: :text, rows: 50, cols: 50
end
=>
# <form action="#" method="post">
#   <textarea cols="50" rows="50" name="job">hexlet</textarea>
# </form>
```
