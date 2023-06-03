-- 0. Buat database -- 
CREATE DATABASE ds;

-- Jawaban Soal 1 -- 
SELECT * FROM ds.studentsperformance;

-- Jawaban Soal 2 --
SELECT 
	DISTINCT race_or_ethnicity
FROM
	ds.studentsperformance
ORDER BY
	race_or_ethnicity;

-- Jawaban Soal 3 --
SELECT * FROM 
	ds.studentsperformance
WHERE
	math_score = "0";

-- Jawaban Soal 4 --
SELECT * FROM
	ds.studentsperformance
WHERE
	parental_level_of_education = "associate's degree"
ORDER BY
	writing_score ASC;

-- Jawaban Soal 5 --
SELECT MIN(writing_A) + MIN(writing_B) AS hasil
FROM (
  SELECT MIN(writing_score) AS writing_A
  FROM ds.studentsperformance
  WHERE race_or_ethnicity = 'group A'
) AS group_A,
(
  SELECT MIN(writing_score) AS writing_B
  FROM ds.studentsperformance
  WHERE race_or_ethnicity = 'group B'
) AS group_B;

-- Jawaban Soal 6 --
SELECT COUNT(*) AS jumlah_orang
FROM ds.studentsperformance
WHERE math_score < 65 AND writing_score > 80;

-- Jawaban Soal 7 --
SELECT DISTINCT parental_level_of_education
FROM ds.studentsperformance
WHERE reading_score > 10 AND reading_score < 25;
-- Atau -- 
SELECT * FROM 
	ds.studentsperformance
 WHERE
	reading_score > 10
    AND
    reading_score <25
ORDER BY
	reading_score ASC;
    
-- Jawaban Soal 7 --
-- Query A
SELECT
    *
FROM
    ds.studentsperformance
WHERE
    parental_level_of_education LIKE '%high%'
    AND race_or_ethnicity NOT IN ('group A', 'group B')
    AND reading_score < 35;

-- Query B
SELECT
    *
FROM
    ds.studentsperformance
WHERE
    parental_level_of_education LIKE 'high%'
    AND race_or_ethnicity NOT IN ('group A', 'group B')
    AND reading_score < 35;