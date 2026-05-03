# 📚 Ruby on Rails Cheat Sheet

Guia rápido com comandos e anotações úteis para desenvolvimento com Ruby on Rails criado por mim :)

---

## Começo

Criar novo projeto:

```bash
rails new nome_do_projeto
```

---

## Criando um Projeto com Tailwind

```bash
rails new nome_do_projeto --css=tailwind --javascript=importmap
cd nome_do_projeto
rails s
```

Acesse no navegador:

```
http://localhost:3000
```

---

## Geradores (Generators)

### Scaffold (estrutura completa)

```bash
rails g scaffold Post title description:text
```

### Model

```bash
rails g model User first_name last_name
```

Remover model:

```bash
rails d model User
```

### Controller

```bash
rails g controller Home index
```

---

## Banco de Dados

Rodar migrations:

```bash
rails db:migrate
```

Reset completo do banco:

```bash
rails db:drop db:create db:migrate db:seed
```

---

## Migrations

Exemplo de rename:

```bash
rails g migration RenameStudentTeachersToStudentsTeachers
```

---

## Console Rails

Abrir console:

```bash
rails console
```

Sair:

```bash
exit
```

---

## Rotas

Ver rotas no navegador:

```
http://localhost:3000/rails/info/routes
```

---

## Gems (Bundler)

Instalar dependências:

```bash
bundle install
```

Atualizar uma gem específica:

```bash
bundle update nome_da_gem
```

Atualizar todas (⚠️ cuidado):

```bash
bundle update
```

---

## ERB (Views)

Executar código:

```erb
<%= %>
```

Código sem renderizar:

```erb
<% %>
```

---

## Associações (HABTM)

Exemplo de relação **Many-to-Many** entre `Student` e `Teacher`.

### Associando professor ao estudante:

```ruby
s.teacher_ids = [1]
```

### Consultando:

```ruby
t.students
```

### Associando vários:

```ruby
t.students = Student.all
```

---

## Associações Polimórficas (Polymorphic Associations)

Associações polimórficas permitem que um model pertença a mais de um outro model em uma única associação. No exemplo abaixo, o model `Address` pertence tanto a `Employee` quanto a `Customer`.


### 1. Estrutura do Model
Para funcionar, a tabela deve conter as colunas `addressable_type` (String) e `addressable_id` (Integer).

### 2. Exemplos Práticos (Console)

**Criando endereços para modelos diferentes:**
```ruby
# Para um Funcionário (Employee)
e = Employee.first
e.addresses << Address.create(street: "Rua da paz")
# SQL gerado: INSERT INTO "addresses" ("street", "addressable_type", "addressable_id"...) 
# VALUES ('Rua da paz', 'Employee', 1...)

# Para um Cliente (Customer)
c = Customer.first
c.addresses << Address.create(street: "Rua da lamentacao")
# SQL gerado: INSERT INTO "addresses" ("street", "addressable_type", "addressable_id"...) 
# VALUES ('Rua da lamentacao', 'Customer', 1...)
```

---

## Boas Práticas

* Use **migrations** para tabelas intermediárias simples (HABTM)
* Use **models intermediários** (`has_many :through`) quando precisar:

  * adicionar campos extras
  * lógica de negócio mais complexa

---

## Dicas Rápidas

* Sempre rode `rails db:migrate` após mudanças no banco
* Prefira nomes claros para migrations
* Evite `bundle update` geral sem necessidade
* Use scaffold só para prototipagem rápida

---