rails g scaffold Post title description:text #cria nossas rotas

rails new findash --css=tailwind --javascript=importmap

rails s #sobe a aplicação

rails db:migrate #quando rodamos alguma alteração de rotas, pra ele atualizar no nosso bd

localhost:porta/rails/info/routes #ver as rotas na web

rails g model user first_name last_name #cria nosso model user

rails d model user #destoi

rails g controller home index #criar controller

rails new *nome do projeto

rails console 
exit

<%%>
imprimit -> <%= %>

bundle install

Para atualizar uma gem específica para a versão mais recente permitida
bundle update nome_da_gem

Para atualizar todas as gems (com cautela!)
bundle update

rails db:drop db:create db:migrate db:seed

rails g migration RenameStudent_teachersToStudents_teachers

f(dev):005> s.teacher_ids=1                                                                                                                                                     
  Teacher Load (0.2ms)  SELECT "teachers".* FROM "teachers" WHERE "teachers"."id" = 1 /*application='F'*/                                                                       
  Teacher Load (0.2ms)  SELECT "teachers".* FROM "teachers" INNER JOIN "students_teachers" ON "teachers"."id" = "students_teachers"."teacher_id" WHERE "students_teachers"."student_id" = 1 /*application='F'*/                                                                                                                                                 
  TRANSACTION (0.2ms)  BEGIN immediate TRANSACTION /*application='F'*/                                                                                                          
  Student::HABTM_Teachers Create (0.2ms)  INSERT INTO "students_teachers" ("student_id", "teacher_id") VALUES (1, 1) RETURNING "id" /*application='F'*/                         
  TRANSACTION (2.9ms)  COMMIT TRANSACTION /*application='F'*/
=> 1

f(dev):014> t.students                                                                                                                                                          
=> [#<Student:0x000001b0d90da008 id: 1, name: "John Doe", created_at: "2026-05-02 23:45:45.039038000 +0000", updated_at: "2026-05-02 23:45:45.039038000 +0000">]                
f(dev):015> t.students = Student.all                                                                                                                                            
  Student Load (0.2ms)  SELECT "students".* FROM "students" /*application='F'*/                                                                                                 
  TRANSACTION (0.1ms)  BEGIN immediate TRANSACTION /*application='F'*/                                                                                                          
  Teacher::HABTM_Students Create (0.2ms)  INSERT INTO "students_teachers" ("student_id", "teacher_id") VALUES (2, 1) RETURNING "id" /*application='F'*/                         
  TRANSACTION (23.2ms)  COMMIT TRANSACTION /*application='F'*/                                                                                                                  
=>                                                                                                                                                                              
[#<Student:0x000001b0d90dc588 id: 1, name: "John Doe", created_at: "2026-05-02 23:45:45.039038000 +0000", updated_at: "2026-05-02 23:45:45.039038000 +0000">,
...
f(dev):016>     

use migration pra intermediar tabelas de forma simples e use models pra interdemdiar de forma mais complexa e com informacoes proprias