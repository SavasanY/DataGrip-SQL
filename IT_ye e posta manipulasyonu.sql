select
    CONCAT(first_name, CONCAT(' ', last_name)) as full_name,

    -- mevcut email
    CONCAT(LOWER(first_name), CONCAT('.', CONCAT(LOWER(last_name), '@veriegitimi.com'))) as old_email,

    -- yeni email:
    CONCAT(
        LOWER(REPLACE(last_name, ' ', '')),
        CONCAT('.',
            CONCAT(LOWER(REPLACE(first_name, ' ', '')),
                '@hotmail.com'
            )
        )
    ) as new_email

from hr.employees;
