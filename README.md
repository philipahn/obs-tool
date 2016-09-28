# obs-tool
Problem: Observations are by natural informal sit-ins/recordings where evaluators assess instructor performance to gain insights of what's happening inside the classroom. In addition to the high volume of observations, 

Hypothesis: 


##Features v1.0 MVP (9/28)
1. Log-in screen
- [ ] Log-in with GA email

2. Navigation bar
- [ ] List of instructors added to navigation bar
- [ ] Filter by instructor
- [ ] Add new instructor
  - [ ] Input 'Instructor Name'
  - [ ] Choose metro: 'DC', 'ATL', 'CHI'
  - [ ] 'Submit' button 
  - [ ] 'Cancel' button
- [ ] List of all instructors (alphabetically) 

3. Observation page (per instructor)
- [ ] View Instructor name
- [ ] Add new observation
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
| Date observation/evaluation was created | date_obs | MM/DD/YYYY 00:00 | 
| Course Instance | instance | WDI13 |
| Metro | metro | DC, CHI, ATL |
| Unique instructor ID | uniqueID | 00420 
| Instructor name | inst_name | Andy Kim
| Observation type | obs_type | 0 = observation; 1 = evaluation
| Observation notes | obs_notes | Any really particular string....
| Lesson Prep | prep | 0 = not tagged; 1 = tagged
| Lesson Framing | framing | 0 = not tagged; 1 = tagged  
| Instruction | inst | 0 = not tagged; 1 = tagged
| Checks for understanding | cfu | 0 = not tagged; 1 = tagged
| Active learning | active | 0 = not tagged; 1 = tagged
| 


##Features in mind
* Evaluations page
* Instructor dashboard when clicking on instructor
* Campus dashboards 
