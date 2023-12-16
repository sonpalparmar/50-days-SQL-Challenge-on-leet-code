
SELECT
    st.student_id,
    st.student_name,
    s.subject_name,
    COALESCE(COUNT(e.subject_name), 0) AS attended_exams
FROM
    students AS st
cross join 
    subjects as s
left JOIN
    Examinations AS e ON st.student_id = e.student_id AND s.subject_name = e.subject_name

GROUP BY
   st.student_name,e.student_id,s.subject_name

order by st.student_id,s.subject_name;
