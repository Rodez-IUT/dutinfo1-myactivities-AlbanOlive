CREATE OR REPLACE FUNCTION find_all_activities_for_owner(owner varchar(30)) RETURNS SETOF activity AS $$
SELECT A.*
FROM activity A
JOIN "user" U
ON U.id = owner_id
WHERE username = owner
$$ LANGUAGE SQL;