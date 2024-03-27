SELECT person_id, CONCAT(name, "(",substr(profession,1,1),")") as name
FROM Person
ORDER BY person_id DESC
