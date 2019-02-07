# FiveCollegeCS

CmpSci 491IP
Charles Weems
October 28th


Five College CS: Complete Business Plan

Team: Julie Ju Young Kim, Arabia Simeon, Perla Garcia 

Product definition statement

Five-College CS helps five college computer science students, faculty, and organization/clubs connect, collaborate, and communicate through a single all-inclusive resource app where you can find, post, and filter through academic, social, and career events and information that will broaden your education, experiences, and opportunities in the five-college consortium.

User definition
Who is your user? 
5 college CS students
5 college CS faculty 
What factors affect whether a user will find your app useful?
Interest level in expanding their educational resources
Age? Gender? Ethnicity? Native Language? Religion? Political affiliation? Income level? Occupation? Hobby? Geographic Location? Season of the year?
Primary Language: English
Five-college CS Students
Pioneer Valley
Computer science and broadening tech knowledge
During the school year
College students (18-22)


Market analysis
Based on the user definition, research census and other data to develop a numerical estimate of the number of potential users.
Smith College: 150-200 majors, 14 faculty & staff
UMASS: 850 majors ,180 faculty & staff
Amherst College: 150-200 majors , 8 faculty & staff
Mount Holyoke College: 100-125 majors, 14 faculty & staff
Hampshire: 50-100 majors, 5 faculty & staff  

            1300-1500 majors, 220 faculty, total 1520~1720 people

Check for competing apps:
We have a first-mover advantage, because there is no app that focuses on the CS departments in the five college consortium.
One that is similar is Corq app
“Corq helps college and university students discover and locate engaging co-curricular opportunities on and around their campus. Taking advantage of the vast library of events and organizations from the Engage co-curricular management system, Corq also helps institutions of higher education clearly tell their outside-of-the classroom story in an interactive way to prospective students, family members, and community stakeholders.” made by Buffalo State College. However, this app is not even in full use among the general community around five colleges.
Estimate the likely number of sales (this will be very imprecise, and may be expressed as a range). Cite your data sources and make a reasonable case for your estimate.
900-1720 people (assuming that the minimum # of majors at Smith, Amherst, Hampshire, and Mount Holyoke download the app as well as half of the UMASS Amherst majors download the app. On the other hand, assuming the sum equals the max from all of the 5 colleges estimated number of computer science majors + estimated number of computer science faculty & staff)

Budget
Estimated income is number of sales times price times 0.7 (Apple takes 30%). Expenses include things like equipment (may just be depreciation of your laptop, could be more if you need to host a server), labor (development hours times par rate), advertising (affects sales numbers), taxes (if you strike it rich, assume 35%). Your personal development time is a labor cost. Don’t sell yourself cheap -- if your app takes off, you want to pay yourself at a reasonable rate. If you’re seeking investment, you have to negotiate this but your proposal should be a starting point for those discussions. 

NOT SELLING, DONT PAY FOR EQUIPMENT

Opportunity costs:

Class - $49,760 tuition w/out room and board or food plan about $1,555 per class of our time, if we took another class instead of this one
Work - We are spending time creating this app instead of receiving $25/hour for working as a novice app developer. Also, if we meet 2 times a week for about 1h30m and we also take about 4 hours outside of class to work on this, then we are missing 7 hours of potential work time. About $175 opportunity cost per week














User scenarios


App data requirements
Data Needed: 
Images: Logo image, five college logo, Icons
Database: App Hosted Database (holds data based on User submission)
Access: Five College Login approval, Five College course database   
Core Data: Five College CS/Tech related organizations and clubs, all filter data we can collect so the app can have information on it before deployment (or user input capability), Basic CS Faculty information, CS Major Students Listing/Directory 
	
We need a server to store data.

iPhone Specific Features:
Maps: for nearby events, getting around campuses
Keychain: Auto-Password save, no need to re-type password every time
Scrolling: For Scrolling through events





Milestone list and tasks
Basic Design Elements Finalized (Deadline: October 15th)
Request Access for data/databases (Deadline: Oct 26th)
Dummy App Finished (Deadline: Oct 27th)
Create our own database (Deadline: Oct 26th)
Login API integration (Deadline: Oct 31st)
User Profile Page working + updating user information in our database (Deadline: November 12th) 
Main landing page and Add item/event Button Working (Deadline: November 13th)
Filtering Items Working (Deadline: November 14th)
Deploy Beta App (Deadline: November 18th) 
Deploy Alpha App(Deadline: December 2nd)

Major Tasks in Development Process: (Identify dependencies and critical paths)

Letters Tasks:
(h) → (hours per task) 
A(1): Access permission to Smith College CS directory database 
B(1): Access permission to Amherst College CS directory database 
C(1): Access permission to UMass CS directory database 
D(1): Access permission to Hampshire CS directory database
E(1): Access permission to Mount Holyoke CS directory database 
F(3): Access permission to Five College Login/ Ask if there is an API?
G(2): Access permission for five college course database
H(6):Create Logo
I(1): Decide on Typeface 
J(1): Decide on Colors
K(1): Decide on icons for Filtering Menus 
L(2): Create Dummy UI Login Page 
M(2): Create Dummy UI User Profile Page
N(2): Create Dummy UI Landing(Main Events) Page
O(2): Create Dummy UI Create new item Page/pop-up 
P(4): Create Dummy UI Filter Page 
Q(3): Implement Login API or student directories provided
R(2): Implement keychain and auto-save for password
S(4): Create a Database on external server 
T:(2): Implement the input new event button
U(4):Implement functionality to filtering buttons
V(2):Implement search bar / tags
Z(12): UI testing & Revisions

8. PERT chart of tasks, milestones, dependencies. Development schedule.
Basic Design Elements Finalized (Deadline: October 15th)
Request Access for data/databases (Deadline: Oct 26th)
Dummy App Finished (Deadline: Oct 27th)
Create our own database on our server (Deadline: Oct 26th)
Login API integration (Deadline: Oct 31st)
User Profile Page working + updating user information in our database (Deadline: November 12th) 
Main landing page and Add item/event Button Working (Deadline: November 13th)
Filtering Items Working (Deadline: November 14th)
Deploy Beta App (Deadline: November 18th) 
Deploy Alpha App(Deadline: December 2nd)

9. Future work
Additional Features:
Individual Chat function
Group Chat function
Notifications before saved events begin
Solve Server Funding Issues: We can convince the five college departments to fund our app after we launch and prove that people are loyal to using the app. External companies interested in hiring or event organizers who want to advertise their organization can pay us to promote them ( selective advertising ) 
Push notifications for important departmental announcements. 
Five College student cap 

Plans for future releases:
Different versions for differing departments or majors. (i.e. Psychology, Government, Engineering), right now ours is just for Computer Science
A Personalized Feed based on past search/click history (AI-supported)

Multiplatform support plans: 

We plan to make a desktop version that supports both safari, and chrome, and internet explorer so that administrators or other faculty, as well as students who may be using the platform mostly on their computers at work or school. They could more easily copy and paste an email they have already drafted to send on their computer into our platform feed. 


10.  Fallback strategy
If we can’t get the access permission for the five-college login system, we would instead try to implement and create our own login system. We would do this by making sure they have a five-college email and verifying that it is an active email address.

Another feature we can delete are the course listings. We have realized that the courses are posted on very different systems for each school. If we cannot accommodate for the different course listing platforms, we don’t need to implement this for our app. It is not a key communication functionality for our app.

