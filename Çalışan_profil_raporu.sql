select
    -- tam ad
    UPPER(CONCAT(first_name, ' ', last_name)) as full_name,

    email,

    -- kıdem seviyesi
    CASE
        WHEN hire_date < DATE '1997-01-01' THEN 'Kıdemli'
        ELSE 'Yeni'
    END AS experience_level,

    -- maaş kategorisi
    case
        WHEN salary IS NULL OR salary = 0 THEN 'Güncellenmeli'
        WHEN salary >= 15000 THEN 'Üst Düzey'
        WHEN salary BETWEEN 10000 AND 14999 THEN 'Yüksek'
        WHEN salary BETWEEN 5000 AND 9999 THEN 'Orta'
        WHEN salary < 5000 THEN 'Başlangıç'
    end as salary_level,

    -- iletişim bilgisi (telefon yoksa email)
    COALESCE(phone_number, email) AS contact_info,

    -- maaş bilgisi
    CASE
        WHEN salary IS NULL OR salary = 0 THEN 'Güncellenmeli'
        ELSE CAST(salary AS TEXT)
    END AS salary_status

from hr.employees

order by salary desc ;
