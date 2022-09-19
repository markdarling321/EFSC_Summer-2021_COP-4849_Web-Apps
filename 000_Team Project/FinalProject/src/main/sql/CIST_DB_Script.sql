/* Joel Seda
   Team Project
   COP-4849-01Z
   07/19/2021
*/   

/*Delete existing table before (re)creating*/
DROP TABLE SCHEDULE;

/*Create Schedule Table*/
CREATE TABLE SCHEDULE (
                        CourseNumber   VARCHAR(14) NOT NULL,
                        CourseName     VARCHAR(255) NOT NULL,
                        PB_40          BOOLEAN,
                        ME_40                  BOOLEAN,
                        CO_40                  BOOLEAN,	
                        TI_40                  BOOLEAN,
                        EL_40                  BOOLEAN,
                        PB_10          BOOLEAN,
                        ME_10                  BOOLEAN,
                        CO_10                  BOOLEAN,
                        TI_10                  BOOLEAN,
                        EL_10                  BOOLEAN,
                        PB_20          BOOLEAN,
                        ME_20			BOOLEAN,
                        CO_20			BOOLEAN,
                        TI_20			BOOLEAN,
                        EL_20			BOOLEAN,
                        ProjMgmt	BOOLEAN,
                        SoftwareDev            BOOLEAN,
                        Networking		BOOLEAN,
                        CyberSec		BOOLEAN,
                        DataSci		BOOLEAN,
            CONSTRAINT  CRN_PRIMARY_KEY PRIMARY KEY (CourseNumber)           );
 
/*Create SCHEDULE table Index on CourseNumber*/
/*CREATE INDEX COURSE_INDEX ON SCHEDULE(CourseNumber);*/
 
/* Insert course values into SCHEDULE table */
INSERT INTO SCHEDULE (  CourseNumber, CourseName,
                        PB_40, ME_40, CO_40, TI_40, EL_40,
                        PB_10, ME_10, CO_10, TI_10, EL_10,
                        PB_20, ME_20, CO_20, TI_20, EL_20,
                        ProjMgmt, SoftwareDev, Networking, CyberSec, DataSci )
VALUES (                'COP 2334', 'Computer Programming',
                        TRUE, TRUE, TRUE, TRUE, TRUE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, TRUE, FALSE, FALSE, TRUE,
                        TRUE, TRUE, TRUE, TRUE, TRUE                         );

INSERT INTO SCHEDULE (  CourseNumber, CourseName,
                        PB_40, ME_40, CO_40, TI_40, EL_40,
                        PB_10, ME_10, CO_10, TI_10, EL_10,
                        PB_20, ME_20, CO_20, TI_20, EL_20,
                        ProjMgmt, SoftwareDev, Networking, CyberSec, DataSci )
VALUES (                'STA 2023', 'Statistics',
                        TRUE, TRUE, TRUE, TRUE, TRUE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        TRUE, TRUE, TRUE, FALSE, TRUE,
                        TRUE, TRUE, TRUE, TRUE, TRUE                         );
 
INSERT INTO SCHEDULE (  CourseNumber, CourseName,
                        PB_40, ME_40, CO_40, TI_40, EL_40,
                        PB_10, ME_10, CO_10, TI_10, EL_10,
                        PB_20, ME_20, CO_20, TI_20, EL_20,
                        ProjMgmt, SoftwareDev, Networking, CyberSec, DataSci )
VALUES (                'GEB 3213', 'Foundations of Managerial Communications',
                        FALSE, TRUE, TRUE, TRUE, TRUE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, TRUE,
                        TRUE, TRUE, TRUE, TRUE, TRUE                         );

INSERT INTO SCHEDULE (  CourseNumber, CourseName,
                        PB_40, ME_40, CO_40, TI_40, EL_40,
                        PB_10, ME_10, CO_10, TI_10, EL_10,
                        PB_20, ME_20, CO_20, TI_20, EL_20,
                        ProjMgmt, SoftwareDev, Networking, CyberSec, DataSci )
VALUES (                'ISM 3011', 'Introduction to Information Technology Management',
                        TRUE, FALSE, TRUE, FALSE, TRUE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, TRUE, FALSE, TRUE,
                        TRUE, TRUE, TRUE, TRUE, TRUE                         );

INSERT INTO SCHEDULE (  CourseNumber, CourseName,
                        PB_40, ME_40, CO_40, TI_40, EL_40,
                        PB_10, ME_10, CO_10, TI_10, EL_10,
                        PB_20, ME_20, CO_20, TI_20, EL_20,
                        ProjMgmt, SoftwareDev, Networking, CyberSec, DataSci )
VALUES (                'ISM 4300', 'Information Systems Operational Management',
                        FALSE, TRUE, TRUE, FALSE, TRUE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, TRUE, TRUE,
                        TRUE, TRUE, TRUE, TRUE, TRUE                         );

INSERT INTO SCHEDULE (  CourseNumber, CourseName,
                        PB_40, ME_40, CO_40, TI_40, EL_40,
                        PB_10, ME_10, CO_10, TI_10, EL_10,
                        PB_20, ME_20, CO_20, TI_20, EL_20,
                        ProjMgmt, SoftwareDev, Networking, CyberSec, DataSci )
VALUES (                'MAN 4504', 'Operational Decision Making',
                        FALSE, TRUE, FALSE, FALSE, TRUE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, TRUE, FALSE, FALSE, TRUE,
                        TRUE, TRUE, TRUE, TRUE, TRUE                         );

INSERT INTO SCHEDULE (  CourseNumber, CourseName,
                        PB_40, ME_40, CO_40, TI_40, EL_40,
                        PB_10, ME_10, CO_10, TI_10, EL_10,
                        PB_20, ME_20, CO_20, TI_20, EL_20,
                        ProjMgmt, SoftwareDev, Networking, CyberSec, DataSci )
VALUES (                'CEN 4341', 'Platform Technologies',
                        FALSE, TRUE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, TRUE, TRUE, FALSE                      );

INSERT INTO SCHEDULE (  CourseNumber, CourseName,
                        PB_40, ME_40, CO_40, TI_40, EL_40,
                        PB_10, ME_10, CO_10, TI_10, EL_10,
                        PB_20, ME_20, CO_20, TI_20, EL_20,
                        ProjMgmt, SoftwareDev, Networking, CyberSec, DataSci )
VALUES (                'CEN 4949 ', 'Internship',
                        TRUE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        TRUE, FALSE, FALSE, FALSE, FALSE,
                        TRUE, TRUE, TRUE, TRUE, FALSE                        );

INSERT INTO SCHEDULE (  CourseNumber, CourseName,
                        PB_40, ME_40, CO_40, TI_40, EL_40,
                        PB_10, ME_10, CO_10, TI_10, EL_10,
                        PB_20, ME_20, CO_20, TI_20, EL_20,
                        ProjMgmt, SoftwareDev, Networking, CyberSec, DataSci )
VALUES (                'CISC 3391', 'Computer Forensics',
                        FALSE, FALSE, FALSE, TRUE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, TRUE, FALSE                     );

INSERT INTO SCHEDULE (  CourseNumber, CourseName,
                        PB_40, ME_40, CO_40, TI_40, EL_40,
                        PB_10, ME_10, CO_10, TI_10, EL_10,
                        PB_20, ME_20, CO_20, TI_20, EL_20,
                        ProjMgmt, SoftwareDev, Networking, CyberSec, DataSci )
VALUES (                'CISC 3392 ', 'Windows Forensics',
                        TRUE, FALSE, FALSE, FALSE, TRUE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, TRUE, FALSE                     );

INSERT INTO SCHEDULE (  CourseNumber, CourseName,
                        PB_40, ME_40, CO_40, TI_40, EL_40,
                        PB_10, ME_10, CO_10, TI_10, EL_10,
                        PB_20, ME_20, CO_20, TI_20, EL_20,
                        ProjMgmt, SoftwareDev, Networking, CyberSec, DataSci )
VALUES (                'CNT 3403', 'Network Defense Security',
                        FALSE, FALSE, TRUE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, TRUE, TRUE, FALSE                      );

INSERT INTO SCHEDULE (  CourseNumber, CourseName,
                        PB_40, ME_40, CO_40, TI_40, EL_40,
                        PB_10, ME_10, CO_10, TI_10, EL_10,
                        PB_20, ME_20, CO_20, TI_20, EL_20,
                        ProjMgmt, SoftwareDev, Networking, CyberSec, DataSci )
VALUES (                'CNT 4704', 'Network Planning and Design',
                        FALSE, TRUE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, TRUE, TRUE, FALSE                      );

INSERT INTO SCHEDULE (  CourseNumber, CourseName,
                        PB_40, ME_40, CO_40, TI_40, EL_40,
                        PB_10, ME_10, CO_10, TI_10, EL_10,
                        PB_20, ME_20, CO_20, TI_20, EL_20,
                        ProjMgmt, SoftwareDev, Networking, CyberSec, DataSci )
VALUES (                'COP 3330', 'Object Oriented Programming',
                        FALSE, FALSE, TRUE, FALSE, TRUE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        TRUE, FALSE, FALSE, FALSE, TRUE,
                        TRUE, TRUE, TRUE, TRUE, TRUE                         );

INSERT INTO SCHEDULE (  CourseNumber, CourseName,
                        PB_40, ME_40, CO_40, TI_40, EL_40,
                        PB_10, ME_10, CO_10, TI_10, EL_10,
                        PB_20, ME_20, CO_20, TI_20, EL_20,
                        ProjMgmt, SoftwareDev, Networking, CyberSec, DataSci )
VALUES (                'COP 3703', 'Database Design and Architecture',
                        TRUE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, TRUE,
                        TRUE, TRUE, FALSE, TRUE, TRUE                        );

INSERT INTO SCHEDULE (  CourseNumber, CourseName,
                        PB_40, ME_40, CO_40, TI_40, EL_40,
                        PB_10, ME_10, CO_10, TI_10, EL_10,
                        PB_20, ME_20, CO_20, TI_20, EL_20,
                        ProjMgmt, SoftwareDev, Networking, CyberSec, DataSci )
VALUES (                'COP 3813', 'Internet Programming',
                        FALSE, FALSE, FALSE, FALSE, TRUE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, TRUE, FALSE, TRUE, FALSE                      );

INSERT INTO SCHEDULE (  CourseNumber, CourseName,
                        PB_40, ME_40, CO_40, TI_40, EL_40,
                        PB_10, ME_10, CO_10, TI_10, EL_10,
                        PB_20, ME_20, CO_20, TI_20, EL_20,
                        ProjMgmt, SoftwareDev, Networking, CyberSec, DataSci )
VALUES (                'COP 4849', 'Web Applications Programming',
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, TRUE,
                        FALSE, TRUE, FALSE, TRUE, FALSE                      );

INSERT INTO SCHEDULE (  CourseNumber, CourseName,
                        PB_40, ME_40, CO_40, TI_40, EL_40,
                        PB_10, ME_10, CO_10, TI_10, EL_10,
                        PB_20, ME_20, CO_20, TI_20, EL_20,
                        ProjMgmt, SoftwareDev, Networking, CyberSec, DataSci )
VALUES (                'ISM 3113', 'Information Systems Analysis and Design',
                        FALSE, FALSE, FALSE, TRUE, TRUE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, TRUE,
                        TRUE, TRUE, TRUE, TRUE, TRUE                         );

INSERT INTO SCHEDULE (  CourseNumber, CourseName,
                        PB_40, ME_40, CO_40, TI_40, EL_40,
                        PB_10, ME_10, CO_10, TI_10, EL_10,
                        PB_20, ME_20, CO_20, TI_20, EL_20,
                        ProjMgmt, SoftwareDev, Networking, CyberSec, DataSci )
VALUES (                'ISM 3321', 'Cybersecurity Fundamentals',
                        TRUE, FALSE, FALSE, FALSE, TRUE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, TRUE, FALSE,
                        FALSE, FALSE, FALSE, TRUE, FALSE                     );

INSERT INTO SCHEDULE (  CourseNumber, CourseName,
                        PB_40, ME_40, CO_40, TI_40, EL_40,
                        PB_10, ME_10, CO_10, TI_10, EL_10,
                        PB_20, ME_20, CO_20, TI_20, EL_20,
                        ProjMgmt, SoftwareDev, Networking, CyberSec, DataSci )
VALUES (                'ISM 3322', 'Advanced Cybersecurity Concepts',
                        FALSE, FALSE, FALSE, FALSE, TRUE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, TRUE, FALSE                     );

INSERT INTO SCHEDULE (  CourseNumber, CourseName,
                        PB_40, ME_40, CO_40, TI_40, EL_40,
                        PB_10, ME_10, CO_10, TI_10, EL_10,
                        PB_20, ME_20, CO_20, TI_20, EL_20,
                        ProjMgmt, SoftwareDev, Networking, CyberSec, DataSci )
VALUES (                'ISM 3324 ', 'Applications in Information Security',
                        FALSE, FALSE, TRUE, FALSE, TRUE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        TRUE, FALSE, FALSE, FALSE, FALSE,
                        TRUE, TRUE, TRUE, TRUE, TRUE                         );

INSERT INTO SCHEDULE (  CourseNumber, CourseName,
                        PB_40, ME_40, CO_40, TI_40, EL_40,
                        PB_10, ME_10, CO_10, TI_10, EL_10,
                        PB_20, ME_20, CO_20, TI_20, EL_20,
                        ProjMgmt, SoftwareDev, Networking, CyberSec, DataSci )
VALUES (                'CAP 3783', 'Database Systems with Big Data',
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, TRUE                     );

INSERT INTO SCHEDULE (  CourseNumber, CourseName,
                        PB_40, ME_40, CO_40, TI_40, EL_40,
                        PB_10, ME_10, CO_10, TI_10, EL_10,
                        PB_20, ME_20, CO_20, TI_20, EL_20,
                        ProjMgmt, SoftwareDev, Networking, CyberSec, DataSci )
VALUES (                'CAP 3940', 'Data Science Internship',
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, TRUE                     );

INSERT INTO SCHEDULE (  CourseNumber, CourseName,
                        PB_40, ME_40, CO_40, TI_40, EL_40,
                        PB_10, ME_10, CO_10, TI_10, EL_10,
                        PB_20, ME_20, CO_20, TI_20, EL_20,
                        ProjMgmt, SoftwareDev, Networking, CyberSec, DataSci )
VALUES (                'CAP 4770', 'Data Mining',
                        FALSE, FALSE, FALSE, FALSE, TRUE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, TRUE                     );

INSERT INTO SCHEDULE (  CourseNumber, CourseName,
                        PB_40, ME_40, CO_40, TI_40, EL_40,
                        PB_10, ME_10, CO_10, TI_10, EL_10,
                        PB_20, ME_20, CO_20, TI_20, EL_20,
                        ProjMgmt, SoftwareDev, Networking, CyberSec, DataSci )
VALUES (                'CAP 4773', 'Capstone Project - Data Management Science',
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, TRUE                     );

INSERT INTO SCHEDULE (  CourseNumber, CourseName,
                        PB_40, ME_40, CO_40, TI_40, EL_40,
                        PB_10, ME_10, CO_10, TI_10, EL_10,
                        PB_20, ME_20, CO_20, TI_20, EL_20,
                        ProjMgmt, SoftwareDev, Networking, CyberSec, DataSci )
VALUES (                'COP 3530', 'Data Structures and Algorithm Analysis',
                        FALSE, FALSE, FALSE, FALSE, TRUE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, TRUE                     );

INSERT INTO SCHEDULE (  CourseNumber, CourseName,
                        PB_40, ME_40, CO_40, TI_40, EL_40,
                        PB_10, ME_10, CO_10, TI_10, EL_10,
                        PB_20, ME_20, CO_20, TI_20, EL_20,
                        ProjMgmt, SoftwareDev, Networking, CyberSec, DataSci )
VALUES (                'COT 4500', 'Numerical Analysis',
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, TRUE                     );

INSERT INTO SCHEDULE (  CourseNumber, CourseName,
                        PB_40, ME_40, CO_40, TI_40, EL_40,
                        PB_10, ME_10, CO_10, TI_10, EL_10,
                        PB_20, ME_20, CO_20, TI_20, EL_20,
                        ProjMgmt, SoftwareDev, Networking, CyberSec, DataSci )
VALUES (                'STA 3024', 'Statistics 2 for Data Scientists',
                        FALSE, FALSE, FALSE, FALSE, TRUE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, TRUE                     );

INSERT INTO SCHEDULE (  CourseNumber, CourseName,
                        PB_40, ME_40, CO_40, TI_40, EL_40,
                        PB_10, ME_10, CO_10, TI_10, EL_10,
                        PB_20, ME_20, CO_20, TI_20, EL_20,
                        ProjMgmt, SoftwareDev, Networking, CyberSec, DataSci )
VALUES (                'CNT 3406', 'Information Security Management',
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, TRUE, FALSE, FALSE, FALSE,
                        TRUE, FALSE, TRUE, FALSE, FALSE                      );

INSERT INTO SCHEDULE (  CourseNumber, CourseName,
                        PB_40, ME_40, CO_40, TI_40, EL_40,
                        PB_10, ME_10, CO_10, TI_10, EL_10,
                        PB_20, ME_20, CO_20, TI_20, EL_20,
                        ProjMgmt, SoftwareDev, Networking, CyberSec, DataSci )
VALUES (                'CNT 3702', 'Infrastructure and Facilities Planning',
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, TRUE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, TRUE, FALSE, FALSE                     );

INSERT INTO SCHEDULE (  CourseNumber, CourseName,
                        PB_40, ME_40, CO_40, TI_40, EL_40,
                        PB_10, ME_10, CO_10, TI_10, EL_10,
                        PB_20, ME_20, CO_20, TI_20, EL_20,
                        ProjMgmt, SoftwareDev, Networking, CyberSec, DataSci )
VALUES (                'ISM 3320', 'Information Systems Control',
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        TRUE, FALSE, TRUE, FALSE, FALSE                      );

INSERT INTO SCHEDULE (  CourseNumber, CourseName,
                        PB_40, ME_40, CO_40, TI_40, EL_40,
                        PB_10, ME_10, CO_10, TI_10, EL_10,
                        PB_20, ME_20, CO_20, TI_20, EL_20,
                        ProjMgmt, SoftwareDev, Networking, CyberSec, DataSci )
VALUES (                'ISM 4220', 'Network Management for Informational Professionals',
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, TRUE, FALSE, FALSE                     );

INSERT INTO SCHEDULE (  CourseNumber, CourseName,
                        PB_40, ME_40, CO_40, TI_40, EL_40,
                        PB_10, ME_10, CO_10, TI_10, EL_10,
                        PB_20, ME_20, CO_20, TI_20, EL_20,
                        ProjMgmt, SoftwareDev, Networking, CyberSec, DataSci )
VALUES (                'ISM 4041', 'Emerging Information Technologies',
                        FALSE, TRUE, FALSE, FALSE, TRUE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, TRUE, FALSE, FALSE,
                        TRUE, TRUE, TRUE, FALSE, FALSE                       );

INSERT INTO SCHEDULE (  CourseNumber, CourseName,
                        PB_40, ME_40, CO_40, TI_40, EL_40,
                        PB_10, ME_10, CO_10, TI_10, EL_10,
                        PB_20, ME_20, CO_20, TI_20, EL_20,
                        ProjMgmt, SoftwareDev, Networking, CyberSec, DataSci )
VALUES (                'CEN 3024', 'Software Development 1',
                        FALSE, FALSE, FALSE, FALSE, TRUE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, TRUE, FALSE, FALSE, FALSE                     );

INSERT INTO SCHEDULE (  CourseNumber, CourseName,
                        PB_40, ME_40, CO_40, TI_40, EL_40,
                        PB_10, ME_10, CO_10, TI_10, EL_10,
                        PB_20, ME_20, CO_20, TI_20, EL_20,
                        ProjMgmt, SoftwareDev, Networking, CyberSec, DataSci )
VALUES (                'CEN 4025', 'Software Development 2',
                        FALSE, FALSE, FALSE, FALSE, TRUE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, TRUE, FALSE, FALSE, FALSE                     );

INSERT INTO SCHEDULE (  CourseNumber, CourseName,
                        PB_40, ME_40, CO_40, TI_40, EL_40,
                        PB_10, ME_10, CO_10, TI_10, EL_10,
                        PB_20, ME_20, CO_20, TI_20, EL_20,
                        ProjMgmt, SoftwareDev, Networking, CyberSec, DataSci )
VALUES (                'CEN 4802', 'Software Integration, Configuration, and Testing',
                        TRUE, FALSE, FALSE, FALSE, TRUE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, TRUE,
                        FALSE, TRUE, FALSE, FALSE, FALSE                     );

INSERT INTO SCHEDULE (  CourseNumber, CourseName,
                        PB_40, ME_40, CO_40, TI_40, EL_40,
                        PB_10, ME_10, CO_10, TI_10, EL_10,
                        PB_20, ME_20, CO_20, TI_20, EL_20,
                        ProjMgmt, SoftwareDev, Networking, CyberSec, DataSci )
VALUES (                'COP 4655', 'Application Development for Mobile Devices',
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, TRUE,
                        FALSE, TRUE, FALSE, FALSE, FALSE                     );

INSERT INTO SCHEDULE (  CourseNumber, CourseName,
                        PB_40, ME_40, CO_40, TI_40, EL_40,
                        PB_10, ME_10, CO_10, TI_10, EL_10,
                        PB_20, ME_20, CO_20, TI_20, EL_20,
                        ProjMgmt, SoftwareDev, Networking, CyberSec, DataSci )
VALUES (                'CEN 4722', 'Human Computer Interaction',
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        TRUE, FALSE, FALSE, FALSE, FALSE                     );

INSERT INTO SCHEDULE (  CourseNumber, CourseName,
                        PB_40, ME_40, CO_40, TI_40, EL_40,
                        PB_10, ME_10, CO_10, TI_10, EL_10,
                        PB_20, ME_20, CO_20, TI_20, EL_20,
                        ProjMgmt, SoftwareDev, Networking, CyberSec, DataSci )
VALUES (                'CIS 3510', 'Advanced I.T. Project Management',
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        TRUE, FALSE, FALSE, FALSE, FALSE                     );

INSERT INTO SCHEDULE (  CourseNumber, CourseName,
                        PB_40, ME_40, CO_40, TI_40, EL_40,
                        PB_10, ME_10, CO_10, TI_10, EL_10,
                        PB_20, ME_20, CO_20, TI_20, EL_20,
                        ProjMgmt, SoftwareDev, Networking, CyberSec, DataSci )
VALUES (                'MAN 4583', 'Project Management',
                        FALSE, TRUE, FALSE, FALSE, TRUE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, TRUE, FALSE, FALSE, TRUE,
                        TRUE, FALSE, FALSE, FALSE, FALSE                     );

INSERT INTO SCHEDULE (  CourseNumber, CourseName,
                        PB_40, ME_40, CO_40, TI_40, EL_40,
                        PB_10, ME_10, CO_10, TI_10, EL_10,
                        PB_20, ME_20, CO_20, TI_20, EL_20,
                        ProjMgmt, SoftwareDev, Networking, CyberSec, DataSci )
VALUES (                'ISM 4314', 'Project and Change Management for Technology',
                        FALSE, TRUE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        FALSE, FALSE, FALSE, FALSE, FALSE,
                        TRUE, FALSE, FALSE, FALSE, FALSE                     );