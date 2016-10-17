# obs-tool
Observations at DC (and probably other campuses) are by nature, informal sit-ins/recordings where evaluators assess instructor performance to gain insights of what's happening inside the classroom. In addition to the high volume of observations that an Instructional Leader may have to go through per-sitting, there's difficulty for campus leaders to keep track of obsrvations and keep all Instructional Leaders accountable. In order to keep track of all observations that are occurring  There's a need to maximize the efficiency of the 

An observation tool that easily organizes and compiles all observations as data points could lead to further data analysis and make the observation cycle transparent. Evaluators will have an easier time making observations and keeping track of his or her progress, while also holding everyone who makes observations accountable. Campus leaders and Global can keep track of not only how many observations are taking place, but what's going on by having access to evaluator notes. 

##Features v1.0 MVP (For 11/5)

###1. Creating instructor profile 
- [ ] Input name
- [ ] Input metro
- [ ] Generate unique ID

###2. Navigation bar 
- [ ] List of instructors added to navigation bar
- [ ] Filter by instructor
- [ ] Add new instructor
  - [ ] Input 'Instructor Name'
  - [ ] Choose metro: 'DC', 'ATL', 'CHI'
  - [ ] 'Submit' button 
  - [ ] 'Cancel' button
- [ ] List of all instructors (alphabetically) 

###3. Observation page (per instructor) (by 10/20) 
- [ ] View Instructor name
- [ ] Add new observation - this would add a row to the database 
    - [ ] Create new observation text editor (place to input 
        - [ ] Space to input Instance
        - [ ] Space to input 'Date of class MM/DD/YY'
        - [ ] Open text editor
        - [ ] Add outside the box: 
            - [ ] New observation created by "Username"
            - [ ] Last edited
            - [ ] Delete observation function
            - [ ] Edit observation function
    - [ ] Tags that can be checked: Lesson Planning, Lesson Framing, Instruction, Checks for Understanding, Active Learning, Classroom Culture
- [ ] Return home (empty, soon to be dashboard)
- [ ] Observations stack on top of each other and easy to browse through
 

##Database Glossary

| Variable  | Heading | Format/Sample
--- | --- | ---
| Unique instructor ID | uniqueID | 00420 
| Instructor name | inst_name | Andy Kim
| Course Instance | instance | WDI13 |
| Date observation/evaluation was created | obs_create | MM/DD/YYYY 00:00 | 
| Created by | created_user | Philip Ahn
| Metro | metro | DC, CHI, ATL |
| Date of observation | obs_date | 
| Observation notes | obs_notes | Nayana's student engagement is LOL
| Lesson Prep | prep | null = not tagged; 0/1/2 = tagged
| Lesson Framing | framing | null = not tagged; 0/1/2 = tagged  
| Instruction | inst | null = not tagged; 0/1/2 = tagged
| Checks for understanding | cfu | null = not tagged; 0/1/2 = tagged
| Active learning | active | null = not tagged; 0/1/2 = tagged
| Date new observation was edited | obs_edit | MM/DD/YYYY 0:00



##Features in mind
* Sync calendar with observations
* Mark as complete when evaluator inputs observation
* Log-in with GA email
* Instructor dashboard when clicking on instructor
* Campus dashboards 
  * Count number of observations during quarter
  * List current on-going classes (look at Spacey?)
  * List recent observations (include: Instructor name, Instance, date, Evaluator) 
* Filtering options
  * Filter by Instance
  * Filter by Metro
* Create dummy website that doesn't show any data and sample instructor names (in case we franchise this) 
* Optimize navigation (especially when including evaluations) 
* Evaluations page - let's work on this way later
* Make desktop shortcut
* Optimize load speeds 
* Setup database on server (so I can access stuff on postgresql) 
* Make it pretty
