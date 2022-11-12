﻿-- ADDRESS

INSERT INTO [ADDRESS](STREET_NUMBER, STREET_NAME, CITY)
VALUES(50, 'ул. "Иван Вазов"', 'Пловдив')

INSERT INTO [ADDRESS](STREET_NUMBER, STREET_NAME, CITY)
VALUES(123, 'ул. "Христо Ботев"', 'София')

INSERT INTO [ADDRESS](STREET_NUMBER, STREET_NAME, CITY)
VALUES(11, 'ул. "Явор"', 'Варна')


-- SCHOOL_TYPE

INSERT INTO SCHOOL_TYPE(SCHOOL_TYPE_NAME)
VALUES('Начално училище')

INSERT INTO SCHOOL_TYPE(SCHOOL_TYPE_NAME)
VALUES('Основно училище')

INSERT INTO SCHOOL_TYPE(SCHOOL_TYPE_NAME)
VALUES('Средно училище')


-- SUBJECT

INSERT INTO [SUBJECT](SUBJECT_NAME)
VALUES('Математика')

INSERT INTO [SUBJECT](SUBJECT_NAME)
VALUES('Български език и литература')

INSERT INTO [SUBJECT](SUBJECT_NAME)
VALUES('Английски език')

INSERT INTO [SUBJECT](SUBJECT_NAME)
VALUES('Немски език')

INSERT INTO [SUBJECT](SUBJECT_NAME)
VALUES('Биология')

INSERT INTO [SUBJECT](SUBJECT_NAME)
VALUES('Физика')

INSERT INTO [SUBJECT](SUBJECT_NAME)
VALUES('Химия')

INSERT INTO [SUBJECT](SUBJECT_NAME)
VALUES('История')

INSERT INTO [SUBJECT](SUBJECT_NAME)
VALUES('География')

INSERT INTO [SUBJECT](SUBJECT_NAME)
VALUES('Информатика')

INSERT INTO [SUBJECT](SUBJECT_NAME)
VALUES('Информационни технологии')

INSERT INTO [SUBJECT](SUBJECT_NAME)
VALUES('Музика')

INSERT INTO [SUBJECT](SUBJECT_NAME)
VALUES('Изобразително изкуство')

INSERT INTO [SUBJECT](SUBJECT_NAME)
VALUES('ФВС')


-- GRADE_TYPE

INSERT INTO GRADE_TYPE(GRADE_TYPE_NAME)
VALUES('Входно равнище')

INSERT INTO GRADE_TYPE(GRADE_TYPE_NAME)
VALUES('Тест')

INSERT INTO GRADE_TYPE(GRADE_TYPE_NAME)
VALUES('Контролна работа')

INSERT INTO GRADE_TYPE(GRADE_TYPE_NAME)
VALUES('Домашна работа')

INSERT INTO GRADE_TYPE(GRADE_TYPE_NAME)
VALUES('Класна работа')

INSERT INTO GRADE_TYPE(GRADE_TYPE_NAME)
VALUES('Устно изпитване')

INSERT INTO GRADE_TYPE(GRADE_TYPE_NAME)
VALUES('Активно участие')

INSERT INTO GRADE_TYPE(GRADE_TYPE_NAME)
VALUES('Проект')


-- PRINCIPAL

INSERT INTO PRINCIPAL(USERNAME, [PASSWORD], FIRST_NAME, MIDDLE_NAME, LAST_NAME, GENDER, PHONE, EMAIL)
VALUES('petar_petrov', 'petrov_password', 'Петър', 'Иванов', 'Петров', 'M', '0888123456', 'petar_petrov@gmail.com')

INSERT INTO PRINCIPAL(USERNAME, [PASSWORD], FIRST_NAME, MIDDLE_NAME, LAST_NAME, GENDER, PHONE, EMAIL)
VALUES('gergana_georgieva', 'georgieva_password', 'Гергана', 'Маринова', 'Георгиева', 'F', '0888999444', 'g_georgieva@abv.bg')

INSERT INTO PRINCIPAL(USERNAME, [PASSWORD], FIRST_NAME, MIDDLE_NAME, LAST_NAME, GENDER, PHONE, EMAIL)
VALUES('todor_popov', 'popov_password', 'Тодор', 'Александров', 'Попов', 'M', '0885177993', 'todor_popov@gmail.com')


-- SCHOOL

INSERT INTO SCHOOL(SCHOOL_NAME, ADDRESS_ID, SCHOOL_TYPE_ID, PRINCIPAL_ID)
VALUES('СУ "Паисий Хилендарски"', 2, 3, 3)

INSERT INTO SCHOOL(SCHOOL_NAME, ADDRESS_ID, SCHOOL_TYPE_ID, PRINCIPAL_ID)
VALUES('ОУ "Алеко Константинов"', 3, 2, 1)

INSERT INTO SCHOOL(SCHOOL_NAME, ADDRESS_ID, SCHOOL_TYPE_ID, PRINCIPAL_ID)
VALUES('НУ "Христо Ботев"', 1, 1, 2)