# CHHS Prototype

[https://chhs-prototype.binti.com/](https://chhs-prototype.binti.com/)

## Links:
Landing Page: chhs-prototype.com
Prototype: chhs-prototype.binti.com

## To test:
1. As a parent: Start at the landing page, http://chhs-prototype.com.
2. To login as a social worker and reply to messages from parents, username: social@binti.com and password: social123

**a.** Felicia Curcuru, Binti’s CEO and head of product management, is responsible for the prototype’s quality.

**b.** Our team includes 8 labor categories: Product Manager, Front End Web Developer, Backend Web Developer, DevOps Engineer, Visual Designer, User Researcher, Technical Architect, Writer.

**c.** We conducted user interviews with basic mock-ups, a clickable prototype, and a live prototype. We iterated on the design and functionality at each step:
* We interviewed biological parents of foster youth, foster parents, foster care caseworkers, and foster youth. While the tool is primarily meant for biological parents, other groups also expressed interest, so we considered them in our design.
* To reduce friction, we decided to not hide the search functionality behind login. We require login for biological parents to message their caseworker.
* Interviewees preferred to use their mobile devices, so the application is mobile-friendly. 
* Many biological parents of foster youth in California speak Spanish, so the app is available in Spanish.
* It’s important to users to receive an email notification each time they receive a message in order to alert them to login and reply.
* The RFI mentioned foster family agencies and residential treatment facilities. The Q&A specified agencies. We learned that stakeholders were interested in both, so we built both.
* We tested search results in both urban and rural zip codes and decided to show search results within 25 miles, sorted by distance, which gave enough results for rural users. 
* We host the facilities index ourselves rather than query the Socrata API, so that we can geocode some of the facilities missing latitude/longitude in the Socrata API.
* Social workers we interviewed wanted to be able to edit the website, so, we also built a WordPress landing page that can be easily edited by non-technical users. 

**d.**

1. Shadowed each type of prospective user 
2. Interviewed prospective users 
3. Defined the audience & created user stories 
4. Tested prototypes with people 
5. Iterated based on feedback

**e.** Our design is based on the US Web Design Standards. We deviated slightly from the color palette for background and footer colors, after hearing feedback that a grey background and footer made the site seem antiquated.

**f.** See Sections c and d.

See detailed user interview notes.

**g.** See sections c and f.

**h.** We built a responsive app and tested it across browsers and devices. We adhered to the USDS digital playbook for responsive design and browser compatibility.

**i.**

* Ruby, version April 2016
* Rails, version March 2016
* PostgreSQL, version January 2016
* jQuery, version January 2016
* Soda-ruby, version February 2016
* US Web Design Standards, version June 2016

**j.** We deployed the prototype on Heroku, a PaaS provider. Heroku integrates with GitHub, allowing for easy automated deployment. Our prototype can easily operate on a substitute IaaS or PaaS.

**k.** We developed unit tests as we built our code to save time, ensure that our code is reliable and has less errors. 

**l.** We connected our GitHub repo to Travis CI, a full-service continuous integration platform. 

**m.** In our development environment, we use dotenv, a local configuration management tool [version March 2016]. In production, we manage configuration using Heroku’s official environment-based tooling, conforming to The Twelve-Factor App manifesto.

**n.** We use Papertrail, a cloud vendor that provides hosted log management for continuous monitoring. It aggregates our logs, indexes them for ready search, and notifies us of errors. 

**o.** Heroku uses Linux containers (LXC), but our app will run in any configuration of physical servers, virtual machines, and containers; meaning no vendor lock-in. 

**p.** Provided sufficient documentation to install and run their prototype on another machine

TODO directly in github

**q.** Open licensed and free platforms used 

The prototype, Rails, and Rails plugins are MIT-licensed and Ruby is 2-clause BSD licensed. These are free, permissive licenses.

##Digital Services Playbook 

**1.** See Sections c, d, e, f and g .

**2.** See Sections c, d, e, f and g. 

**3.** See section c and h. No instructions needed to start and navigate. The footer has contact information for assistance. Users can save information and come back. We used the US Web Design Standards.

**4.**
* Tested each iteration with real people for feedback
* Developed an MVP within days
* Used GitHub to review code and manage version control 
* Used Slack and Asana to keep track of,, communicate, and prioritize features and bug backlogs.

**5.** We are experienced in producing contracts that outline deliverables, milestones and performance metrics.

**6.** See Section a.

**7.** Our team has experience building and designing popular, high-traffic digital services, mobile and web applications at companies such as Google, YouTube, Facebook, Couchsurfing.com, and FundersClub. We use automated testing frameworks, using DevOps techniques and building apps with a high level of security. See Section b for list of team roles covered.

**8.** See Section i. We choose technologies that are widely-used and open source. A new team member can begin coding their first day.

**9.** Deploy in a flexible hosting environment

**10.** See Section k. Deploying a new feature takes minutes and we deploy frequently. 

**11.** Manage security and privacy through reusable processes: We have experience creating secure software to ensure user privacy and data protection. We use modern standards, such as SSL and … 

**12.** Use data to drive decisions

**13.** We embrace transparency and leverage widely used open source tools.

# Development

[Visit our development documentation](DEVELOPMENT.md)
