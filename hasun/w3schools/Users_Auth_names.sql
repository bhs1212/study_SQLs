-- 이름, 이메일, 권한 이름 표시
-- Teddy, Allen
SELECT users.NAME, users.EMAIL, auth_names.AUTH_NAME
FROM (users INNER JOIN auths
on users.UNIQUE_ID = auths.UNIQUE_ID_USERS
AND users.NAME in ('Teddy', 'Allen')) INNER JOIN auth_names
									ON auths.UNIQUE_ID_AUTH_NAMES = auth_names.UNIQUE_ID
;