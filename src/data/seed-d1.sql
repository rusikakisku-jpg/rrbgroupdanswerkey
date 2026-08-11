CREATE TABLE IF NOT EXISTS posts (id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT NOT NULL, slug TEXT NOT NULL UNIQUE, cover_image TEXT, content TEXT NOT NULL, excerpt TEXT, category TEXT DEFAULT "General", status TEXT DEFAULT "publish", views INTEGER DEFAULT 0, created_at DATETIME DEFAULT CURRENT_TIMESTAMP, tags TEXT, author_name TEXT DEFAULT "Admin");
CREATE TABLE IF NOT EXISTS settings (id INTEGER PRIMARY KEY AUTOINCREMENT, setting_key TEXT NOT NULL UNIQUE, setting_value TEXT NOT NULL);
CREATE TABLE IF NOT EXISTS comments (id INTEGER PRIMARY KEY AUTOINCREMENT, post_id INTEGER NOT NULL, parent_id INTEGER DEFAULT 0, author_name TEXT NOT NULL, author_email TEXT NOT NULL, content TEXT NOT NULL, status TEXT DEFAULT "approved", created_at DATETIME DEFAULT CURRENT_TIMESTAMP);
CREATE TABLE IF NOT EXISTS subscribers (id INTEGER PRIMARY KEY AUTOINCREMENT, email TEXT NOT NULL UNIQUE, created_at DATETIME DEFAULT CURRENT_TIMESTAMP);
INSERT OR REPLACE INTO posts (id, title, slug, cover_image, content, excerpt, category, status, views, created_at, tags, author_name) VALUES (17, 'RRB Section Controller Recruitment 2026: Apply Online for CEN 03/2026 Notification, Syllabus & Selection Process', 'rrb-section-controller-recruitment-2026-apply-online-for-cen-032026-notification-syllabus-selection-process', 'uploads/cover_1784131321_6a57aef9b61cf.jpg', '<p>The Railway Recruitment Board (RRB) has officially released the Centralized Employment Notification (CEN) No. 03/2026, announcing the recruitment of <strong>Section Controllers</strong> in various Zonal Railways across India. This recruitment drive offers a golden opportunity for graduate candidates aspiring to establish a prestigious career in the Indian Railways. The Section Controller is a Level-6 post carrying high responsibilities related to train operations, safety, and puncture management.</p>
<p>Eligible candidates are invited to submit their online applications starting from <strong>July 15, 2026</strong>. The closing date for submission of online applications is <strong>August 14, 2026</strong>. Below, we cover all the necessary details regarding the RRB Section Controller CEN 03/2026 notification, laid out in sequential, easy-to-read tables for your convenience.</p>
<!-- Table of Contents -->
<div class="toc-box" style="background: #f8fafc; border: 1px solid #e2e8f0; padding: 20px; border-radius: var(--r); margin-bottom: 30px;">
<h3 style="margin-top: 0; margin-bottom: 12px; font-size: 1.1rem; color: var(--text-dark); display: flex; align-items: center; gap: 8px;">Table of Contents (Sections)</h3>
<ol style="margin: 0; padding-left: 20px; line-height: 1.8; font-size: 0.9rem;">
<li><a style="color: var(--blue); font-weight: 600;" href="#important-dates">1. Important Dates (Schedule)</a></li>
<li><a style="color: var(--blue); font-weight: 600;" href="#application-fee">2. Application Fee &amp; Refund Terms</a></li>
<li><a style="color: var(--blue); font-weight: 600;" href="#age-limit">3. Age Limit &amp; Relaxations (as on July 1, 2026)</a></li>
<li><a style="color: var(--blue); font-weight: 600;" href="#educational-qualification">4. Educational Qualification</a></li>
<li><a style="color: var(--blue); font-weight: 600;" href="#detailed-vacancies">5. Detailed Vacancies &amp; Regional Distributions</a></li>
<li><a style="color: var(--blue); font-weight: 600;" href="#medical-standards">6. Medical Fitness Standards (A-2 Category)</a></li>
<li><a style="color: var(--blue); font-weight: 600;" href="#exam-pattern-syllabus">7. CBT Exam Pattern &amp; Syllabus Details</a></li>
<li><a style="color: var(--blue); font-weight: 600;" href="#how-to-apply">8. How to Apply Online</a></li>
</ol>
</div>
<h2 id="important-dates">1. Important Dates (Schedule)</h2>
<p>Aspirants must keep track of the important timeline to avoid missing deadlines. The application registration and payment must be completed strictly within the scheduled dates. Here is the schedule for RRB Section Controller Recruitment 2026:</p>
<table class="table table-bordered">
<thead>
<tr>
<th>Event / Milestone</th>
<th>Scheduled Dates &amp; Times</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>Date of Indicative Notice</strong></td>
<td>June 27, 2026</td>
</tr>
<tr>
<td><strong>Opening Date of Online Applications</strong></td>
<td>July 15, 2026 (00:00 Hours)</td>
</tr>
<tr>
<td><strong>Closing Date of Online Applications</strong></td>
<td>August 14, 2026 (23:59 Hours)</td>
</tr>
<tr>
<td><strong>Last Date for Online Fee Payment</strong></td>
<td>August 16, 2026 (Sunday)</td>
</tr>
<tr>
<td><strong>Application Modification Window</strong></td>
<td>August 17, 2026 to August 26, 2026 (Correction fee: Rs. 250/-)</td>
</tr>
<tr>
<td><strong>Scribe Details Submission Window</strong></td>
<td>August 27, 2026 to August 31, 2026</td>
</tr>
</tbody>
</table>
<h2 id="application-fee">2. Application Fee &amp; Refund Terms</h2>
<p>Candidates must pay the application fee online. A significant portion of the application fee is refunded after the candidate appears for the Computer Based Test (CBT). All categories are listed in separate rows below:</p>
<table class="table table-bordered">
<thead>
<tr>
<th>Candidate Category</th>
<th>Exam Fee (Rs.)</th>
<th>Refund Amount (Rs.)</th>
<th>Refund Policy / Condition</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>General (UR) / OBC Male Candidates</strong></td>
<td>Rs. 500/-</td>
<td>Rs. 400/-</td>
<td>Refunded to Aadhaar-seeded bank account after appearing in the CBT exam (bank charges will be deducted).</td>
</tr>
<tr>
<td><strong>Scheduled Caste (SC) Candidates</strong></td>
<td>Rs. 250/-</td>
<td>Rs. 250/- (Full)</td>
<td>Refunded to Aadhaar-seeded bank account after appearing in the CBT exam.</td>
</tr>
<tr>
<td><strong>Scheduled Tribe (ST) Candidates</strong></td>
<td>Rs. 250/-</td>
<td>Rs. 250/- (Full)</td>
<td>Refunded to Aadhaar-seeded bank account after appearing in the CBT exam.</td>
</tr>
<tr>
<td><strong>Female Candidates (All Categories)</strong></td>
<td>Rs. 250/-</td>
<td>Rs. 250/- (Full)</td>
<td>Refunded to Aadhaar-seeded bank account after appearing in the CBT exam.</td>
</tr>
<tr>
<td><strong>Transgender Candidates</strong></td>
<td>Rs. 250/-</td>
<td>Rs. 250/- (Full)</td>
<td>Refunded to Aadhaar-seeded bank account after appearing in the CBT exam.</td>
</tr>
<tr>
<td><strong>Ex-Servicemen (ExSM) Candidates</strong></td>
<td>Rs. 250/-</td>
<td>Rs. 250/- (Full)</td>
<td>Refunded to Aadhaar-seeded bank account after appearing in the CBT exam.</td>
</tr>
<tr>
<td><strong>Persons with Benchmark Disabilities (PwBD)</strong></td>
<td>Rs. 250/-</td>
<td>Rs. 250/- (Full)</td>
<td>Refunded to Aadhaar-seeded bank account after appearing in the CBT exam.</td>
</tr>
<tr>
<td><strong>Minority Communities</strong> (Muslims, Christians, Sikhs, Buddhists, Jains, Parsis)</td>
<td>Rs. 250/-</td>
<td>Rs. 250/- (Full)</td>
<td>Refunded to Aadhaar-seeded bank account after appearing in the CBT exam (Must furnish Minority Community Affidavit during DV).</td>
</tr>
<tr>
<td><strong>Economically Backward Class (EBC)</strong> (Family income &lt; Rs. 50,000/annum)</td>
<td>Rs. 250/-</td>
<td>Rs. 250/- (Full)</td>
<td>Refunded to Aadhaar-seeded bank account after appearing in the CBT exam (Must hold EBC certificate/BPL card on the date of application).</td>
</tr>
</tbody>
</table>
<h2 id="age-limit">3. Age Limit &amp; Relaxations (as on July 1, 2026)</h2>
<p>The age criteria must be met as of the cut-off date. Here are the age boundaries and category relaxation rules:</p>
<table class="table table-bordered">
<thead>
<tr>
<th>Category</th>
<th>Upper Limit of Birth Date (Not earlier than)</th>
<th>Lower Limit of Birth Date (Not later than)</th>
<th>Age Relaxation Granted</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>General / UR &amp; EWS</strong></td>
<td>July 2, 1993</td>
<td>July 1, 2006</td>
<td>No relaxation (Normal limit: 20 to 33 years)</td>
</tr>
<tr>
<td><strong>OBC (Non-Creamy Layer)</strong></td>
<td>July 2, 1990</td>
<td>July 1, 2006</td>
<td><strong>3 Years</strong> (Max age: 36 years)</td>
</tr>
<tr>
<td><strong>SC / ST</strong></td>
<td>July 2, 1988</td>
<td>July 1, 2006</td>
<td><strong>5 Years</strong> (Max age: 38 years)</td>
</tr>
<tr>
<td><strong>PwBD (UR/EWS)</strong></td>
<td>July 2, 1983</td>
<td>July 1, 2006</td>
<td><strong>10 Years</strong> (Max age: 43 years)</td>
</tr>
<tr>
<td><strong>PwBD (OBC-NCL)</strong></td>
<td>July 2, 1980</td>
<td>July 1, 2006</td>
<td><strong>13 Years</strong> (Max age: 46 years)</td>
</tr>
<tr>
<td><strong>PwBD (SC/ST)</strong></td>
<td>July 2, 1978</td>
<td>July 1, 2006</td>
<td><strong>15 Years</strong> (Max age: 48 years)</td>
</tr>
</tbody>
</table>
<h2 id="educational-qualification">4. Educational Qualification</h2>
<p>Candidates must check the educational prerequisites carefully before applying:</p>
<table class="table table-bordered">
<thead>
<tr>
<th>Parameter</th>
<th>Requirement Details</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>Required Degree</strong></td>
<td>Graduate Degree (Bachelor''s Degree) in any discipline from a recognized University or its equivalent.</td>
</tr>
<tr>
<td><strong>Result Status</strong></td>
<td>Candidates awaiting their final results of the prescribed educational qualification on the closing date (14.08.2026) are <strong>NOT eligible</strong> to apply.</td>
</tr>
</tbody>
</table>
<h2 id="detailed-vacancies">5. Detailed Vacancies &amp; Regional Distributions</h2>
<p>The total number of vacant seats for Section Controllers in this recruitment cycle is 119. These vacancies are distributed across various Railway Recruitment Boards (RRBs) and Zonal Railways:</p>
<table class="table table-bordered">
<thead>
<tr>
<th>Railway Recruitment Board (RRB)</th>
<th>Railway Zone</th>
<th>UR</th>
<th>SC</th>
<th>ST</th>
<th>OBC</th>
<th>EWS</th>
<th>Total Vacancies</th>
</tr>
</thead>
<tbody>
<tr>
<td>Ahmedabad</td>
<td>WR</td>
<td>5</td>
<td>2</td>
<td>1</td>
<td>2</td>
<td>1</td>
<td><strong>11</strong></td>
</tr>
<tr>
<td>Ajmer</td>
<td>WCR</td>
<td>0</td>
<td>1</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td><strong>1</strong></td>
</tr>
<tr>
<td>Prayagraj</td>
<td>NCR &amp; NR</td>
<td>2</td>
<td>0</td>
<td>2</td>
<td>0</td>
<td>0</td>
<td><strong>4</strong></td>
</tr>
<tr>
<td>Bengaluru</td>
<td>SWR</td>
<td>4</td>
<td>2</td>
<td>0</td>
<td>2</td>
<td>0</td>
<td><strong>8</strong></td>
</tr>
<tr>
<td>Bhopal</td>
<td>WCR &amp; WR</td>
<td>3</td>
<td>1</td>
<td>0</td>
<td>2</td>
<td>0</td>
<td><strong>6</strong></td>
</tr>
<tr>
<td>Bhubaneswar</td>
<td>ECR</td>
<td>1</td>
<td>1</td>
<td>0</td>
<td>2</td>
<td>2</td>
<td><strong>6</strong></td>
</tr>
<tr>
<td>Bilaspur</td>
<td>CR &amp; SECR</td>
<td>2</td>
<td>0</td>
<td>0</td>
<td>2</td>
<td>0</td>
<td><strong>4</strong></td>
</tr>
<tr>
<td>Chandigarh</td>
<td>NR</td>
<td>3</td>
<td>0</td>
<td>1</td>
<td>2</td>
<td>0</td>
<td><strong>6</strong></td>
</tr>
<tr>
<td>Chennai</td>
<td>SR</td>
<td>2</td>
<td>3</td>
<td>2</td>
<td>2</td>
<td>0</td>
<td><strong>9</strong></td>
</tr>
<tr>
<td>Gorakhpur</td>
<td>NER</td>
<td>4</td>
<td>0</td>
<td>0</td>
<td>1</td>
<td>0</td>
<td><strong>5</strong></td>
</tr>
<tr>
<td>Guwahati</td>
<td>NFR</td>
<td>1</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td>0</td>
<td><strong>1</strong></td>
</tr>
<tr>
<td>Kolkata</td>
<td>ER &amp; SER</td>
<td>4</td>
<td>1</td>
<td>1</td>
<td>1</td>
<td>1</td>
<td><strong>8</strong></td>
</tr>
<tr>
<td>Malda</td>
<td>ER &amp; SER</td>
<td>3</td>
<td>1</td>
<td>0</td>
<td>3</td>
<td>0</td>
<td><strong>7</strong></td>
</tr>
<tr>
<td>Mumbai</td>
<td>CR &amp; SCR</td>
<td>5</td>
<td>0</td>
<td>0</td>
<td>1</td>
<td>0</td>
<td><strong>6</strong></td>
</tr>
<tr>
<td>Muzaffarpur</td>
<td>ECR</td>
<td>0</td>
<td>1</td>
<td>1</td>
<td>1</td>
<td>0</td>
<td><strong>3</strong></td>
</tr>
<tr>
<td>Patna</td>
<td>ECR</td>
<td>1</td>
<td>2</td>
<td>1</td>
<td>1</td>
<td>1</td>
<td><strong>6</strong></td>
</tr>
<tr>
<td>Ranchi</td>
<td>ECR &amp; SER</td>
<td>5</td>
<td>3</td>
<td>2</td>
<td>3</td>
<td>1</td>
<td><strong>14</strong></td>
</tr>
<tr>
<td>Secunderabad</td>
<td>SCR</td>
<td>1</td>
<td>0</td>
<td>1</td>
<td>2</td>
<td>1</td>
<td><strong>5</strong></td>
</tr>
<tr>
<td>Siliguri</td>
<td>NFR</td>
<td>2</td>
<td>1</td>
<td>0</td>
<td>1</td>
<td>1</td>
<td><strong>5</strong></td>
</tr>
<tr>
<td>Thiruvananthapuram</td>
<td>SR</td>
<td>2</td>
<td>0</td>
<td>0</td>
<td>1</td>
<td>1</td>
<td><strong>4</strong></td>
</tr>
<tr style="background: #f1f5f9; font-weight: bold;">
<td colspan="2">Grand Total (All RRBs)</td>
<td>50</td>
<td>19</td>
<td>12</td>
<td>29</td>
<td>9</td>
<td><strong>119</strong></td>
</tr>
</tbody>
</table>
<h2 id="medical-standards">6. Medical Fitness Standards (A-2 Category)</h2>
<p>Since the Section Controller role is crucial to train operations and passenger safety, candidates must fulfill the A-2 medical fitness standards:</p>
<table class="table table-bordered">
<thead>
<tr>
<th>Medical Metric</th>
<th>Required Fitness Standard</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>General Health</strong></td>
<td>Physically fit in all respects to carry out Section Controller duties.</td>
</tr>
<tr>
<td><strong>Distant Vision</strong></td>
<td>6/9, 6/9 without glasses (Must pass the fogging test).</td>
</tr>
<tr>
<td><strong>Near Vision</strong></td>
<td>Sn 0.6, 0.6 without glasses.</td>
</tr>
<tr>
<td><strong>Visual Abilities</strong></td>
<td>Must pass tests for Colour Vision, Binocular Vision, Night Vision, and Myopic Vision.</td>
</tr>
<tr>
<td><strong>Corrective Eye Surgery</strong></td>
<td>Candidates who have undergone <strong>LASIK surgery</strong> or any other refractive surgery are <strong>strictly not eligible</strong>.</td>
</tr>
</tbody>
</table>
<h2 id="exam-pattern-syllabus">7. CBT Exam Pattern &amp; Syllabus Details</h2>
<p>The exam contains a single-stage CBT followed by a Computer Based Aptitude Test (CBAT). Below is the structured exam pattern and details of the syllabus:</p>
<table class="table table-bordered">
<thead>
<tr>
<th>Subject Area / Section</th>
<th>Questions</th>
<th>Marks</th>
<th>Exam Details &amp; Negative Marking</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>Analytical and Mathematical Capability</strong></td>
<td>60 Questions</td>
<td>60 Marks</td>
<td rowspan="3">* <strong>Duration:</strong> 120 Minutes (2 Hours)<br>* <strong>Negative Marking:</strong> 1/3rd mark deduction for each incorrect answer in CBT.<br>* <strong>CBAT:</strong> Shortlisted candidates (8 times vacancies) must get a minimum T-score of 42 in each battery.</td>
</tr>
<tr>
<td><strong>Logical Capability</strong></td>
<td>20 Questions</td>
<td>20 Marks</td>
</tr>
<tr>
<td><strong>Mental Reasoning</strong></td>
<td>20 Questions</td>
<td>20 Marks</td>
</tr>
<tr style="font-weight: bold; background: #f8fafc;">
<td>Total</td>
<td>100 Questions</td>
<td>100 Marks</td>
<td>CBT (70% weightage) + CBAT (30% weightage)</td>
</tr>
</tbody>
</table>
<h3>Syllabus Topics Overview</h3>
<table class="table table-bordered">
<thead>
<tr>
<th>Subject Section</th>
<th>Detailed Syllabus Topics Covered</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>Mathematics &amp; Data Interpretation</strong></td>
<td>Number System, Ratio &amp; Proportions, Averages, Percentages, Profit, Loss &amp; Discounts, Time, Speed &amp; Distance, Power &amp; Work, Algebra, LCM, HCF, Geometry, Probability/Statistics, and data representation (charts, graphs, pie charts, Venn diagrams).</td>
</tr>
<tr>
<td><strong>Logical Capability</strong></td>
<td>Binary Logic, Syllogisms, Clocks &amp; Calendars, Assumptions, Blood Relations, Family Tree, and English Reading Comprehension (Main/Supporting ideas, Logical structure).</td>
</tr>
<tr>
<td><strong>Mental Reasoning</strong></td>
<td>Analogies, Series Completion, Coding-Decoding, and Ranking/Arrangement-based puzzles.</td>
</tr>
</tbody>
</table>
<h2 id="how-to-apply">8. How to Apply Online</h2>
<p>Aspirants must follow these steps to register and apply online:</p>
<ol>
<li>Visit the official RRB online application portal at <strong>rrbapply.gov.in</strong>.</li>
<li>Click on "Create an Account" and complete the registration process using a valid mobile number and email ID.</li>
<li>If you already have an account from previous 2024/2025/2026 recruitments, use those same credentials to log in.</li>
<li>Authenticate your identity using Aadhaar or DigiLocker for a smoother verification process.</li>
<li>Fill in all the required details, including educational qualifications and Zonal Railway preferences.</li>
<li><strong>Live Photo Capture:</strong> Capture a live photograph using your webcam or front camera. Ensure you are wearing dark clothing, sitting in front of a plain background, and not wearing caps or glasses.</li>
<li>Upload your scanned signature in running handwriting (black ink, JPG format, size between 30KB and 49KB).</li>
<li>Pay the application fee and submit the form. Take a printout of the submitted application form for future reference.</li>
</ol>
<p>Start preparing early to secure your seat as a Section Controller in the Indian Railways. Good luck!</p>', 'RRB Section Controller Recruitment 2026: Official CEN 03/2026 notification out for 119 vacancies. Check eligibility, pay scale, age limit, syllabus, pattern and apply online.', 'Notification', 'publish', 163, '2026-07-15 15:38:26', 'RRB Recruitment, Section Controller, CEN 03/2026, Railway Jobs, Exam Syllabus', 'Mangal');
INSERT OR REPLACE INTO posts (id, title, slug, cover_image, content, excerpt, category, status, views, created_at, tags, author_name) VALUES (18, 'RRB Section Controller Syllabus 2026: CBT Exam Pattern, Subject-Wise Topics & CBAT Aptitude Guide', 'rrb-section-controller-syllabus-2026-cbt-exam-pattern-subject-wise-topics-cbat-aptitude-guide', 'uploads/cover_1784179416_6a586ad8b93e3.jpg', '<p>To successfully crack the Railway Recruitment Board (RRB) Section Controller recruitment under Centralized Employment Notification (CEN) No. 03/2026, candidates must have a crystal-clear understanding of the exam syllabus. The role of a Section Controller is operational and safety-critical, demanding high analytical speeds, logical reasoning, and mental fitness. Consequently, the selection structure is tailored to test these specific faculties.</p>
<p>The recruitment process consists of a single-stage Computer Based Test (CBT), followed by a Computer Based Aptitude Test (CBAT), Document Verification (DV), and a medical examination. In this detailed guide, we provide a complete breakdown of the subject-wise syllabus, exam pattern, marking scheme, and CBAT structure in structured tables to assist you in planning your preparation strategy.</p>
<!-- Table of Contents -->
<div class="toc-box" style="background: #f8fafc; border: 1px solid #e2e8f0; padding: 20px; border-radius: var(--r); margin-bottom: 30px;">
<h3 style="margin-top: 0; margin-bottom: 12px; font-size: 1.1rem; color: var(--text-dark); display: flex; align-items: center; gap: 8px;">Table of Contents (Syllabus Sections)</h3>
<ol style="margin: 0; padding-left: 20px; line-height: 1.8; font-size: 0.9rem;">
<li><a style="color: var(--blue); font-weight: 600;" href="#stages-overview">1. Selection Stages &amp; Combined Weightage</a></li>
<li><a style="color: var(--blue); font-weight: 600;" href="#cbt-pattern">2. CBT Exam Pattern &amp; Mark Distribution</a></li>
<li><a style="color: var(--blue); font-weight: 600;" href="#maths-syllabus">3. Mathematics &amp; Data Interpretation Syllabus</a></li>
<li><a style="color: var(--blue); font-weight: 600;" href="#logic-syllabus">4. Logical Capability &amp; Reading Comprehension Syllabus</a></li>
<li><a style="color: var(--blue); font-weight: 600;" href="#reasoning-syllabus">5. Mental Reasoning Syllabus</a></li>
<li><a style="color: var(--blue); font-weight: 600;" href="#cbat-details">6. Computer Based Aptitude Test (CBAT) Parameters</a></li>
<li><a style="color: var(--blue); font-weight: 600;" href="#preperation-strategy">7. Preparation Strategy &amp; Recommended Books</a></li>
</ol>
</div>
<h2 id="stages-overview">1. Selection Stages &amp; Combined Weightage</h2>
<p>Unlike other general railway exams, the merit list for Section Controllers is drawn by combining the performance of both the written test (CBT) and the aptitude test (CBAT). Understanding how each stage contributes to the final ranking is crucial:</p>
<table class="table table-bordered">
<thead>
<tr>
<th>Recruitment Stage</th>
<th>Nature of Examination</th>
<th>Weightage in Final Merit</th>
<th>Key Selection Rules</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>Computer Based Test (CBT)</strong></td>
<td>Objective Multiple Choice Questions (MCQ)</td>
<td><strong>70% Weightage</strong></td>
<td>Shortlists candidates equal to 8 times the vacancies per RRB for the next stage (CBAT).</td>
</tr>
<tr>
<td><strong>Computer Based Aptitude Test (CBAT)</strong></td>
<td>Psychometric &amp; Aptitude Battery Tests</td>
<td><strong>30% Weightage</strong></td>
<td>Must secure a minimum T-Score of 42 marks in each test battery to qualify. No category relaxations are permitted.</td>
</tr>
<tr>
<td><strong>Document Verification (DV)</strong></td>
<td>Original Certificates Scrutiny</td>
<td>Qualifying only</td>
<td>Done at a 1:1 ratio based on the combined merit list of CBT and CBAT.</td>
</tr>
<tr>
<td><strong>Medical Examination (ME)</strong></td>
<td>A-2 Category Health Standards Test</td>
<td>Qualifying only</td>
<td>Tests general physical health and strict eye standards. LASIK surgery cases are disqualified.</td>
</tr>
</tbody>
</table>
<h2 id="cbt-pattern">2. CBT Exam Pattern &amp; Mark Distribution</h2>
<p>The single-stage CBT tests speed and accuracy. With 100 questions to be solved in 120 minutes, time management is a primary challenge. Below is the section-wise distribution of marks:</p>
<table class="table table-bordered">
<thead>
<tr>
<th>Subject Area / Section</th>
<th>Number of Questions</th>
<th>Maximum Marks</th>
<th>Negative Marking Rules</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>Analytical and Mathematical Capability</strong></td>
<td>60 Questions</td>
<td>60 Marks</td>
<td rowspan="3">* <strong>Negative Marking:</strong> 1/3rd (0.33) of the marks allotted to a question will be deducted for each incorrect answer.<br>* <strong>CBT Duration:</strong> 120 Minutes (2 Hours) for all candidates.<br>* <strong>Question Type:</strong> Multiple choice objective questions available in English, Hindi, and 13 regional Indian languages.</td>
</tr>
<tr>
<td><strong>Logical Capability</strong></td>
<td>20 Questions</td>
<td>20 Marks</td>
</tr>
<tr>
<td><strong>Mental Reasoning</strong></td>
<td>20 Questions</td>
<td>20 Marks</td>
</tr>
<tr style="font-weight: bold; background: #f0f7ff;">
<td>Grand Total</td>
<td>100 Questions</td>
<td>100 Marks</td>
<td>Score is normalized across multiple shifts.</td>
</tr>
</tbody>
</table>
<h2 id="maths-syllabus">3. Mathematics &amp; Data Interpretation Syllabus</h2>
<p>This is the weightiest section of the CBT, accounting for 60% of the total questions. It is divided into core numerical mathematics and data interpretation systems:</p>
<table class="table table-bordered">
<thead>
<tr>
<th>Sub-Section</th>
<th>Topic Area</th>
<th>Detailed Syllabus Topics &amp; Sub-Themes</th>
</tr>
</thead>
<tbody>
<tr>
<td rowspan="4"><strong>Part A: Mathematics (Numerical Ability)</strong></td>
<td>Arithmetic &amp; Numbers</td>
<td>Number Systems, Fractions, Decimals, Simplification, LCM and HCF, Ratio and Proportions, Averages, Percentages, and Partnership.</td>
</tr>
<tr>
<td>Commercial Maths</td>
<td>Profit, Loss and Discounts, Simple Interest, Compound Interest, Time and Work, Pipe and Cisterns, Time, Speed, and Distance (including Problems on Trains, Boats, and Streams).</td>
</tr>
<tr>
<td>Advanced Maths</td>
<td>Algebraic Identities, Linear Equations in one and two variables, Arithmetic Progression (AP), Basic Geometry (lines, angles, triangles, circles), Area and Volumes (Mensuration of 2D and 3D shapes).</td>
</tr>
<tr>
<td>Probability &amp; Stats</td>
<td>Elementary Probability, Calculation of Mean, Median, Mode, and basic Statistical measures (Basic Level only).</td>
</tr>
<tr>
<td rowspan="2"><strong>Part B: Data Analysis &amp; Interpretation</strong></td>
<td>Graphical Representations</td>
<td>Analysis of tabular data, Bar charts, Line graphs, Histograms, Scatter plots, Pie charts, and Venn Diagrams. Candidates must draw inferences from multi-source data representations.</td>
</tr>
<tr>
<td>Data Logic</td>
<td>Data Sufficiency (determining if the given statements are sufficient to answer a mathematical question) and Data Arrangement puzzles.</td>
</tr>
</tbody>
</table>
<h2 id="logic-syllabus">4. Logical Capability &amp; Reading Comprehension Syllabus</h2>
<p>This section carries 20 marks and is designed to test a candidate''s logical deduction capabilities as well as their understanding of logical language structures through reading comprehensions:</p>
<table class="table table-bordered">
<thead>
<tr>
<th>Topic Category</th>
<th>Detailed Syllabus Topics</th>
<th>Description of Question Types</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>Logical Reasoning</strong></td>
<td>Binary Logic, Syllogisms, Clocks and Calendars, Blood Relations, Family Tree diagrams, and logical logic-based puzzles.</td>
<td>Tests decision-making ability under operational constraints, relation-mapping, and calendar-clock calculation logic.</td>
</tr>
<tr>
<td><strong>Reading Comprehension</strong></td>
<td>Passages provided strictly in English language. Questions test: Identification of the main idea, supporting details, application of concepts, logical structure of the paragraph, and author''s style/tone.</td>
<td>Passages are drawn from diverse subjects such as History, Science, Technology, Society, Environment, Literature, Mythology, and Culture.</td>
</tr>
</tbody>
</table>
<h2 id="reasoning-syllabus">5. Mental Reasoning Syllabus</h2>
<p>The mental reasoning section carries 20 marks. It primarily evaluates spatial reasoning, pattern recognition, and ordering skills:</p>
<table class="table table-bordered">
<thead>
<tr>
<th>Syllabus Topic</th>
<th>Sub-Topics &amp; Logical Formats</th>
<th>Objective Focus</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>Analogy</strong></td>
<td>Number Analogies, Letter/Alphabet Analogies, Semantic analogies (identifying relationship patterns between two items and applying it to another pair).</td>
<td>Tests associative memory and semantic logic matching.</td>
</tr>
<tr>
<td><strong>Series Completion</strong></td>
<td>Numerical Series, Alphabetical Series, Mixed Series, and pattern-based sequences.</td>
<td>Evaluating sequence prediction and arithmetic pattern spotting.</td>
</tr>
<tr>
<td><strong>Coding-Decoding</strong></td>
<td>Letter Coding, Number Coding, Substitution Coding, and Deciphering message-based coding.</td>
<td>Tests analytical speed and code deciphering capabilities.</td>
</tr>
<tr>
<td><strong>Arrangements &amp; Ranking</strong></td>
<td>Circular Arrangements, Linear Seating Arrangements, Comparison-based rankings, and Direction Sense tests.</td>
<td>Tests spatial awareness and relative position mapping.</td>
</tr>
</tbody>
</table>
<h2 id="cbat-details">6. Computer Based Aptitude Test (CBAT) Parameters</h2>
<p>Candidates shortlisted from the CBT (8 times the vacancies) must appear for the CBAT. The CBAT is designed to test attributes essential for train routing operations:</p>
<table class="table table-bordered">
<thead>
<tr>
<th>CBAT Metric</th>
<th>Standard Requirements &amp; Conditions</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>Test Structure</strong></td>
<td>Consists of multiple test batteries evaluating concentration, selective attention, spatial scanning, speed of decision making, and personality traits.</td>
</tr>
<tr>
<td><strong>Qualifying Score</strong></td>
<td>Candidates must score a minimum <strong>T-Score of 42 marks</strong> in each of the test batteries to qualify. Failure in even one battery leads to disqualification.</td>
</tr>
<tr>
<td><strong>Mandatory Vision Certificate</strong></td>
<td>Candidates must produce an **Original Vision Certificate** (as per Annexure VI or VIA) from a registered Eye Specialist on the day of the CBAT, confirming A-2 medical fitness. No candidate is allowed to appear without this certificate.</td>
</tr>
<tr>
<td><strong>Marking Rules</strong></td>
<td>There is **no negative marking** in the CBAT. Questions and options are available only in English and Hindi.</td>
</tr>
</tbody>
</table>
<h2 id="preperation-strategy">7. Preparation Strategy &amp; Recommended Books</h2>
<p>To successfully prepare for the RRB Section Controller exam, follow these systematic preparation strategies:</p>
<ul>
<li><strong>Master Data Interpretation:</strong> Practice charts, Venn diagrams, and bar graphs daily. Since 60% of the CBT focuses on Mathematics and DI, scoring high in this section guarantees a spot in the CBAT.</li>
<li><strong>Aptitude Drills:</strong> Practice selective attention and spatial scanning mock tests online to clear the CBAT batteries. You can utilize practice links available on the official RDSO website.</li>
<li><strong>Time Management Mock Tests:</strong> Practice 120-minute mock tests regularly to handle the 1/3rd negative marking pressure. Focus on accuracy over speed.</li>
</ul>
<p>Recommended Books for Preparation:</p>
<table class="table table-bordered">
<thead>
<tr>
<th>Subject Section</th>
<th>Recommended Book Name</th>
<th>Author / Publisher</th>
</tr>
</thead>
<tbody>
<tr>
<td>Mathematics &amp; DI</td>
<td>Quantitative Aptitude for Competitive Examinations</td>
<td>Dr. R.S. Aggarwal (S. Chand)</td>
</tr>
<tr>
<td>Data Interpretation</td>
<td>How to Prepare for Data Interpretation for CAT</td>
<td>Arun Sharma (McGraw Hill)</td>
</tr>
<tr>
<td>Reasoning &amp; Logic</td>
<td>A Modern Approach to Verbal &amp; Non-Verbal Reasoning</td>
<td>Dr. R.S. Aggarwal</td>
</tr>
<tr>
<td>CBAT Aptitude</td>
<td>RDSO Aptitude Test Practice Guide</td>
<td>Kiran Publications / RDSO Official Portal</td>
</tr>
</tbody>
</table>
<p>Make sure to start preparing early. Structured subject-wise study is the key to cracking the Section Controller exam. Best of luck!</p>', 'RRB Section Controller Syllabus 2026: In-depth subject-wise syllabus for CBT and CBAT, detailed question distribution, negative marking rules, and exam preparation guide.', 'Syllabus', 'publish', 268, '2026-07-16 05:11:23', 'Section Controller Syllabus, RRB Syllabus, CEN 03/2026 Exam Pattern, Railway Syllabus 2026', 'Mangal');
INSERT OR REPLACE INTO posts (id, title, slug, cover_image, content, excerpt, category, status, views, created_at, tags, author_name) VALUES (19, 'RRB Technician Grade 1 Signal Recruitment 2026: CEN 02/2026 Notification Out, 323 Posts, Syllabus & Selection Process', 'rrb-technician-grade-1-signal-recruitment-2026-cen-022026-notification-out-323-posts-syllabus-selection-process', 'uploads/cover_1784569202_6a5e5d7247841.jpg', '<p>The Railway Recruitment Boards (RRBs) have officially issued the detailed <strong>Centralized Employment Notification (CEN) No. 02/2026</strong> for the recruitment of <strong>Technician Grade-I Signal</strong> posts across various Zonal Railways and Production Units. This recruitment notification opens up excellent career prospects for candidates possessing a Bachelor of Science (B.Sc.), Diploma in Engineering, or B.E. / B.Tech degree in relevant technical streams. As a Level-5 post under the 7th Central Pay Commission (CPC), the Technician Grade-I Signal post carries an initial pay of <strong>Rs. 29,200/- per month</strong> along with applicable allowances.</p>
<p>Online applications for RRB Technician Grade-I Signal Recruitment 2026 open on <strong>June 30, 2026</strong> and the closing date for online submission is <strong>July 29, 2026</strong>. Candidates seeking a rewarding technical position in Indian Railways are advised to review the official parameters, medical standards, educational qualifications, zone-wise vacancies, and examination scheme provided in the comprehensive guide below.</p>
<!-- Table of Contents -->
<div class="toc-box" style="background: #f8fafc; border: 1px solid #e2e8f0; padding: 20px; border-radius: 12px; margin-bottom: 30px;">
<h3 style="margin-top: 0; margin-bottom: 12px; font-size: 1.1rem; color: #1e293b; display: flex; align-items: center; gap: 8px;">Table of Contents (Index)</h3>
<ol style="margin: 0; padding-left: 20px; line-height: 1.8; font-size: 0.95rem;">
<li><a style="color: #2563eb; font-weight: 600;" href="#important-dates">1. Important Dates &amp; Official Schedule</a></li>
<li><a style="color: #2563eb; font-weight: 600;" href="#application-fee">2. Application Fee &amp; Refund Guidelines</a></li>
<li><a style="color: #2563eb; font-weight: 600;" href="#age-limit">3. Age Limit &amp; Category-Wise Relaxations</a></li>
<li><a style="color: #2563eb; font-weight: 600;" href="#educational-qualification">4. Prescribed Educational Qualifications</a></li>
<li><a style="color: #2563eb; font-weight: 600;" href="#medical-standards">5. Medical Fitness Standards (B-1 Category)</a></li>
<li><a style="color: #2563eb; font-weight: 600;" href="#vacancy-breakdown">6. RRB Zone-Wise Vacancy Distribution</a></li>
<li><a style="color: #2563eb; font-weight: 600;" href="#exam-pattern">7. Computer Based Test (CBT) Exam Pattern</a></li>
<li><a style="color: #2563eb; font-weight: 600;" href="#detailed-syllabus">8. Subject-Wise Detailed Syllabus</a></li>
<li><a style="color: #2563eb; font-weight: 600;" href="#how-to-apply">9. Step-by-Step Online Application Guide</a></li>
<li><a style="color: #2563eb; font-weight: 600;" href="#faqs">10. Frequently Asked Questions (FAQs)</a></li>
</ol>
</div>
<h2 id="important-dates">1. Important Dates &amp; Official Schedule</h2>
<p>Candidates must keep track of the official dates for application submission, fee payment, and modification windows to ensure timely registration for CEN 02/2026:</p>
<table class="table table-bordered">
<thead>
<tr>
<th>Milestone / Event</th>
<th>Important Date &amp; Timing</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>Employment News Indicative Notice</strong></td>
<td>May 23, 2026</td>
</tr>
<tr>
<td><strong>Opening Date for Online Applications</strong></td>
<td>June 30, 2026 (00:00 Hours)</td>
</tr>
<tr>
<td><strong>Closing Date for Online Applications</strong></td>
<td>July 29, 2026 (23:59 Hours)</td>
</tr>
<tr>
<td><strong>Last Date for Online Fee Payment</strong></td>
<td>July 31, 2026 (23:59 Hours)</td>
</tr>
<tr>
<td><strong>Application Modification Window</strong></td>
<td>August 1, 2026 to August 10, 2026 (Rs. 250/- fee)</td>
</tr>
<tr>
<td><strong>Computer Based Test (CBT) Schedule</strong></td>
<td>To be announced on official RRB websites</td>
</tr>
</tbody>
</table>
<h2 id="application-fee">2. Application Fee &amp; Refund Guidelines</h2>
<p>The examination fee structure for RRB Technician Grade-I Signal is specified category-wise. Part or whole of the examination fee is refunded to candidates who appear in the Computer Based Test (CBT):</p>
<table class="table table-bordered">
<thead>
<tr>
<th>Category of Candidate</th>
<th>Examination Fee (Rs.)</th>
<th>Refund Amount (Rs.)</th>
<th>Refund Conditions &amp; Policy</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>Unreserved (UR) / OBC Male Candidates</strong></td>
<td>Rs. 500/-</td>
<td>Rs. 400/-</td>
<td>Refunded to bank account after deducting bank charges upon appearing in the CBT exam.</td>
</tr>
<tr>
<td><strong>SC / ST Candidates</strong></td>
<td>Rs. 250/-</td>
<td>Rs. 250/- (Full)</td>
<td>Full refund transferred to bank account after appearing in the CBT exam.</td>
</tr>
<tr>
<td><strong>Female Candidates (All Categories)</strong></td>
<td>Rs. 250/-</td>
<td>Rs. 250/- (Full)</td>
<td>Full refund transferred to bank account after appearing in the CBT exam.</td>
</tr>
<tr>
<td><strong>Ex-Servicemen (ExSM)</strong></td>
<td>Rs. 250/-</td>
<td>Rs. 250/- (Full)</td>
<td>Full refund transferred to bank account after appearing in the CBT exam.</td>
</tr>
<tr>
<td><strong>Persons with Benchmark Disabilities (PwBD)</strong></td>
<td>Rs. 250/-</td>
<td>Rs. 250/- (Full)</td>
<td>Full refund transferred to bank account after appearing in the CBT exam.</td>
</tr>
<tr>
<td><strong>Transgender Candidates</strong></td>
<td>Rs. 250/-</td>
<td>Rs. 250/- (Full)</td>
<td>Full refund transferred to bank account after appearing in the CBT exam.</td>
</tr>
<tr>
<td><strong>Minorities &amp; Economically Backward Class (EBC)</strong></td>
<td>Rs. 250/-</td>
<td>Rs. 250/- (Full)</td>
<td>Full refund upon appearing in CBT (Must submit valid certificate during Document Verification).</td>
</tr>
</tbody>
</table>
<h2 id="age-limit">3. Age Limit &amp; Category-Wise Relaxations</h2>
<p>The age limit for Technician Grade-I Signal (Level-5) is calculated as on <strong>July 1, 2026</strong>. Candidates must fall within the age bracket of <strong>18 to 33 years</strong>. Upper age relaxations apply to reserved categories:</p>
<table class="table table-bordered">
<thead>
<tr>
<th>Category</th>
<th>Age Limit (as on 01.07.2026)</th>
<th>Upper Age Relaxation</th>
<th>Upper Birth Date Cut-off (Not earlier than)</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>UR / EWS</strong></td>
<td>18 to 33 Years</td>
<td>Nil</td>
<td>July 2, 1993</td>
</tr>
<tr>
<td><strong>OBC (Non-Creamy Layer)</strong></td>
<td>18 to 36 Years</td>
<td><strong>3 Years</strong></td>
<td>July 2, 1990</td>
</tr>
<tr>
<td><strong>SC / ST</strong></td>
<td>18 to 38 Years</td>
<td><strong>5 Years</strong></td>
<td>July 2, 1988</td>
</tr>
<tr>
<td><strong>PwBD (UR/EWS)</strong></td>
<td>18 to 43 Years</td>
<td><strong>10 Years</strong></td>
<td>July 2, 1983</td>
</tr>
<tr>
<td><strong>PwBD (OBC-NCL)</strong></td>
<td>18 to 46 Years</td>
<td><strong>13 Years</strong></td>
<td>July 2, 1980</td>
</tr>
<tr>
<td><strong>PwBD (SC/ST)</strong></td>
<td>18 to 48 Years</td>
<td><strong>15 Years</strong></td>
<td>July 2, 1978</td>
</tr>
</tbody>
</table>
<h2 id="educational-qualification">4. Prescribed Educational Qualifications</h2>
<p>Candidates applying for Category No. 1 (Technician Grade-I Signal) must possess any one of the following qualifications from a recognized University or Institute as on the closing date (July 29, 2026):</p>
<table class="table table-bordered">
<thead>
<tr>
<th>Qualification Stream</th>
<th>Accepted Degree / Diploma Details</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>B.Sc. Degree</strong></td>
<td>Bachelor of Science (B.Sc.) in Physics / Electronics / Computer Science / Information Technology / Instrumentation OR B.Sc. in a combination of any sub-streams of these basic subjects.</td>
</tr>
<tr>
<td><strong>3-Year Diploma</strong></td>
<td>Three-year Diploma in Engineering in Physics / Electronics / Computer Science / Information Technology / Instrumentation or in any combination of these sub-streams.</td>
</tr>
<tr>
<td><strong>B.E. / B.Tech Degree</strong></td>
<td>Degree in Engineering (B.E. / B.Tech) in the basic streams of Physics / Electronics / Computer Science / Information Technology / Instrumentation or any combination thereof.</td>
</tr>
</tbody>
</table>
<div style="background: #fef3c7; border-left: 4px solid #f59e0b; padding: 15px; border-radius: 6px; margin: 20px 0;"><strong>Important Note:</strong> Candidates awaiting the final results of their qualifying degree/diploma on the closing date (29.07.2026) are <strong>NOT eligible</strong> to apply.</div>
<h2 id="medical-standards">5. Medical Fitness Standards (B-1 Category)</h2>
<p>Candidates shortlisted for Technician Grade-I Signal must satisfy the <strong>B-1 Medical Standard</strong> during Document Verification &amp; Medical Examination:</p>
<table class="table table-bordered">
<thead>
<tr>
<th>Medical Parameter</th>
<th>Prescribed Standard</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>General Physical Fitness</strong></td>
<td>Physically fit in all respects to perform signal maintenance and operations.</td>
</tr>
<tr>
<td><strong>Distant Vision</strong></td>
<td>6/9, 6/9 with or without glasses (Glasses power must not exceed 4D).</td>
</tr>
<tr>
<td><strong>Near Vision</strong></td>
<td>Sn 0.6, 0.6 with or without glasses.</td>
</tr>
<tr>
<td><strong>Required Vision Tests</strong></td>
<td>Must pass tests for Colour Vision, Binocular Vision, Night Vision, and Myopic Vision.</td>
</tr>
</tbody>
</table>
<h2 id="vacancy-breakdown">6. RRB Zone-Wise Vacancy Distribution</h2>
<p>A total of <strong>323 vacancies</strong> are announced for Technician Grade-I Signal across participating Railway Recruitment Boards. Below is the zone-wise breakdown:</p>
<table class="table table-bordered">
<thead>
<tr>
<th>RRB Name</th>
<th>Railway Zone</th>
<th>UR</th>
<th>SC</th>
<th>ST</th>
<th>OBC</th>
<th>EWS</th>
<th>Total Vacancies</th>
</tr>
</thead>
<tbody>
<tr>
<td>Ahmedabad</td>
<td>WR</td>
<td>13</td>
<td>5</td>
<td>4</td>
<td>10</td>
<td>5</td>
<td><strong>37</strong></td>
</tr>
<tr>
<td>Ajmer</td>
<td>NWR / WCR</td>
<td>8</td>
<td>2</td>
<td>1</td>
<td>5</td>
<td>2</td>
<td><strong>18</strong></td>
</tr>
<tr>
<td>Prayagraj</td>
<td>NCR / NR</td>
<td>12</td>
<td>4</td>
<td>2</td>
<td>7</td>
<td>3</td>
<td><strong>28</strong></td>
</tr>
<tr>
<td>Bengaluru</td>
<td>SWR</td>
<td>10</td>
<td>3</td>
<td>1</td>
<td>6</td>
<td>2</td>
<td><strong>22</strong></td>
</tr>
<tr>
<td>Bhopal</td>
<td>WCR / WR</td>
<td>9</td>
<td>3</td>
<td>1</td>
<td>5</td>
<td>2</td>
<td><strong>20</strong></td>
</tr>
<tr>
<td>Bhubaneswar</td>
<td>ECoR</td>
<td>6</td>
<td>2</td>
<td>1</td>
<td>3</td>
<td>1</td>
<td><strong>13</strong></td>
</tr>
<tr>
<td>Bilaspur</td>
<td>SECR / CR</td>
<td>11</td>
<td>3</td>
<td>2</td>
<td>6</td>
<td>3</td>
<td><strong>25</strong></td>
</tr>
<tr>
<td>Chandigarh</td>
<td>NR</td>
<td>7</td>
<td>2</td>
<td>1</td>
<td>4</td>
<td>2</td>
<td><strong>16</strong></td>
</tr>
<tr>
<td>Chennai</td>
<td>SR</td>
<td>14</td>
<td>4</td>
<td>2</td>
<td>8</td>
<td>4</td>
<td><strong>32</strong></td>
</tr>
<tr>
<td>Gorakhpur</td>
<td>NER</td>
<td>5</td>
<td>1</td>
<td>1</td>
<td>3</td>
<td>1</td>
<td><strong>11</strong></td>
</tr>
<tr>
<td>Guwahati</td>
<td>NFR</td>
<td>4</td>
<td>1</td>
<td>0</td>
<td>2</td>
<td>1</td>
<td><strong>8</strong></td>
</tr>
<tr>
<td>Kolkata</td>
<td>ER / SER</td>
<td>12</td>
<td>4</td>
<td>2</td>
<td>7</td>
<td>3</td>
<td><strong>28</strong></td>
</tr>
<tr>
<td>Mumbai</td>
<td>CR / WR / SCR</td>
<td>15</td>
<td>5</td>
<td>3</td>
<td>10</td>
<td>5</td>
<td><strong>38</strong></td>
</tr>
<tr>
<td>Ranchi</td>
<td>SER / ECR</td>
<td>9</td>
<td>3</td>
<td>1</td>
<td>5</td>
<td>2</td>
<td><strong>20</strong></td>
</tr>
<tr>
<td>Secunderabad</td>
<td>SCR</td>
<td>10</td>
<td>3</td>
<td>2</td>
<td>7</td>
<td>3</td>
<td><strong>25</strong></td>
</tr>
<tr style="background: #f1f5f9; font-weight: bold;">
<td colspan="2">Total Vacancies (All RRBs)</td>
<td>155</td>
<td>47</td>
<td>25</td>
<td>95</td>
<td>41</td>
<td><strong>323</strong></td>
</tr>
</tbody>
</table>
<h2 id="exam-pattern">7. Computer Based Test (CBT) Exam Pattern</h2>
<p>The recruitment process for Level-5 (Technician Grade-I Signal) involves a single-stage Computer Based Test (CBT) followed by Document Verification (DV) and Medical Examination (ME). The CBT exam structure is as follows:</p>
<table class="table table-bordered">
<thead>
<tr>
<th>Subject / Test Section</th>
<th>Number of Questions</th>
<th>Maximum Marks</th>
<th>Exam Duration &amp; Rules</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>General Awareness</strong></td>
<td>10 Questions</td>
<td>10 Marks</td>
<td rowspan="5">* <strong>Total Duration:</strong> 90 Minutes (1.5 Hours)<br>* <strong>Total Questions:</strong> 100 Questions<br>* <strong>Negative Marking:</strong> 1/3rd mark deducted for each wrong answer.<br>* <strong>Normalization:</strong> Marks normalized for multi-shift CBTs.<br>* <strong>Min Qualifying Marks:</strong> UR/EWS 40%, OBC 30%, SC 30%, ST 25%.</td>
</tr>
<tr>
<td><strong>General Intelligence &amp; Reasoning</strong></td>
<td>15 Questions</td>
<td>15 Marks</td>
</tr>
<tr>
<td><strong>Basics of Computers &amp; Applications</strong></td>
<td>20 Questions</td>
<td>20 Marks</td>
</tr>
<tr>
<td><strong>Mathematics</strong></td>
<td>20 Questions</td>
<td>20 Marks</td>
</tr>
<tr>
<td><strong>Basic Science &amp; Engineering</strong></td>
<td>35 Questions</td>
<td>35 Marks</td>
</tr>
<tr style="font-weight: bold; background: #f8fafc;">
<td>Total</td>
<td>100 Questions</td>
<td>100 Marks</td>
</tr>
</tbody>
</table>
<h2 id="detailed-syllabus">8. Subject-Wise Detailed Syllabus</h2>
<p>Candidates preparing for RRB Technician Grade-I Signal CBT must focus on the following subject-wise topics outlined in the official notification:</p>
<h3>A. General Awareness</h3>
<p>Knowledge of Current Affairs, Indian Geography, Culture and History of India including freedom struggle, Indian Polity and Constitution, Indian Economy, Environmental issues concerning India and World, Sports, General Scientific and Technological developments.</p>
<h3>B. General Intelligence &amp; Reasoning</h3>
<p>Analogies, Alphabetical and Number Series, Coding and Decoding, Mathematical operations, Relationships, Syllogism, Jumbling, Venn Diagram, Data Interpretation and Sufficiency, Conclusions and Decision Making, Similarities and Differences, Analytical Reasoning, Classification, Directions, Statement &ndash; Arguments and Assumptions.</p>
<h3>C. Basics of Computers &amp; Applications</h3>
<p>Architecture of Computers, input and output devices, Storage devices, Networking, Operating System (Windows, Unix, Linux), MS Office (Word, Excel, PowerPoint), Data Representation (Binary, Octal, Hexadecimal), Internet and Email, Websites and Web Browsers, Computer Virus and Malware protection.</p>
<h3>D. Mathematics</h3>
<p>Number System, Rational and Irrational numbers, BODMAS, Decimals, Fractions, LCM and HCF, Ratio and Proportion, Percentages, Mensuration, Time and Work, Time and Distance, Simple and Compound Interest, Profit and Loss, Algebra, Basic Trigonometry, Statistics, Probability, Matrices and Determinants.</p>
<h3>E. Basic Science &amp; Engineering</h3>
<p>Units and Measurements, Mass, Weight and Density, Work, Power and Energy, Speed and Velocity, Heat and Temperature, Basic Electricity and Electronics (Ohm&rsquo;s law, Kirchhoff&rsquo;s laws, Semiconductor devices, Diodes, Transistors, Operational Amplifiers), Digital Electronics (Logic gates, Boolean algebra, Flip-flops, Counters), Signals and Systems, Communications, Measurements and Instrumentation.</p>
<h2 id="how-to-apply">9. Step-by-Step Online Application Guide</h2>
<ol>
<li>Visit the official RRB online application portal at <strong>rrbapply.gov.in</strong>.</li>
<li>Click on <strong>"Create an Account"</strong> and register using a valid mobile number and personal email ID. If you already created an account during 2024/2025 RRB recruitments, use the same login credentials.</li>
<li>Complete Aadhaar or DigiLocker verification for seamless identity authentication.</li>
<li>Fill in primary details, educational qualifications, and choose your designated RRB zone and post preferences.</li>
<li><strong>Live Photo Upload:</strong> Capture a clear live photograph using webcam/mobile camera in front of a plain background without caps or dark glasses.</li>
<li>Upload a scanned copy of your signature (black ink, running hand, size 30KB - 49KB).</li>
<li>Pay the application fee online via Net Banking, Debit/Credit Card, or UPI and download the final submitted application form for future reference.</li>
</ol>
<h2 id="faqs">10. Frequently Asked Questions (FAQs)</h2>
<p><strong>Q1. What is the initial pay scale for RRB Technician Grade-I Signal?</strong><br>Technician Grade-I Signal is a Level-5 post under 7th CPC with an initial pay of Rs. 29,200/- per month plus allowances.</p>
<p><strong>Q2. Can Diploma or B.Tech holders apply for Technician Grade-I Signal?</strong><br>Yes, candidates with a 3-Year Diploma in Engineering or B.E./B.Tech degree in Physics, Electronics, CS, IT, or Instrumentation are eligible.</p>
<p><strong>Q3. What is the age limit for Grade-I Signal in CEN 02/2026?</strong><br>The age limit is 18 to 33 years as on July 1, 2026, with 3 years relaxation for OBC-NCL and 5 years for SC/ST.</p>
<p><strong>Q4. Is there negative marking in the CBT exam?</strong><br>Yes, 1/3rd mark will be deducted for every incorrect answer in the CBT examination.</p>
<p><strong>Q5. Is LASIK surgery allowed for Grade-I Signal medical test?</strong><br>No, candidates who have undergone LASIK or any refractive eye surgery are ineligible for B-1 medical standard.</p>', 'RRB Technician Grade 1 Signal Recruitment 2026 (CEN 02/2026): Detailed notification for 323 Level-5 posts. Check eligibility, pay scale, B.Sc/Diploma qualifications, age limit, exam pattern, syllabus, and online application guide.', 'Notification', 'publish', 85, '2026-07-20 16:33:24', 'RRB Technician Grade 1, CEN 02/2026, Signal Technician, Railway Recruitment 2026, RRB Syllabus, Level 5 Railway Jobs', 'Mangal');
INSERT OR REPLACE INTO posts (id, title, slug, cover_image, content, excerpt, category, status, views, created_at, tags, author_name) VALUES (20, 'RRB Technician Grade 3 Recruitment 2026: CEN 02/2026 Notification for 6234 Posts, ITI/10+2 Trades, Syllabus & Selection Process', 'rrb-technician-grade-3-recruitment-2026-cen-022026-notification-for-6234-posts-iti102-trades-syllabus-selection-process', 'uploads/cover_1784569315_6a5e5de3a38bb.jpg', '<p>The Railway Recruitment Boards (RRBs) have announced the mega recruitment notification <strong>CEN No. 02/2026</strong> for <strong>6,234 Technician Grade-III vacancies</strong> in various technical departments including Signal &amp; Telecom (S&amp;T), Fitter, Electrical, Diesel Mechanical, Welder, Machinist, Carriage &amp; Wagon, Track Machine, and Refrigeration &amp; Air Conditioning. Technician Grade-III is a Level-2 post under the 7th CPC with an initial basic pay of <strong>Rs. 19,900/- per month</strong>.</p>
<p>Applications for RRB Technician Grade-III Recruitment 2026 can be submitted online starting <strong>June 30, 2026</strong> through <strong>July 29, 2026</strong>. Candidates having passed Matriculation (10th) with ITI or Course Completed Act Apprenticeship (CCAA), as well as 10+2 PCM (Physics &amp; Maths) pass candidates for S&amp;T trades, can apply. Below is a comprehensive guide covering trade qualifications, age limits, syllabus, exam pattern, and zone-wise vacancies.</p>
<!-- Table of Contents -->
<div class="toc-box" style="background: #f8fafc; border: 1px solid #e2e8f0; padding: 20px; border-radius: 12px; margin-bottom: 30px;">
<h3 style="margin-top: 0; margin-bottom: 12px; font-size: 1.1rem; color: #1e293b; display: flex; align-items: center; gap: 8px;">Table of Contents (Index)</h3>
<ol style="margin: 0; padding-left: 20px; line-height: 1.8; font-size: 0.95rem;">
<li><a style="color: #2563eb; font-weight: 600;" href="#important-dates">1. Important Dates &amp; Schedule</a></li>
<li><a style="color: #2563eb; font-weight: 600;" href="#application-fee">2. Application Fee &amp; Refund Policy</a></li>
<li><a style="color: #2563eb; font-weight: 600;" href="#age-limit">3. Age Limit &amp; Category Relaxations</a></li>
<li><a style="color: #2563eb; font-weight: 600;" href="#educational-qualification">4. Prescribed Trade Qualifications &amp; Eligibility</a></li>
<li><a style="color: #2563eb; font-weight: 600;" href="#merged-categories">5. Merged Post Categories (MPCs) Structure</a></li>
<li><a style="color: #2563eb; font-weight: 600;" href="#vacancy-distribution">6. RRB Zone-Wise Vacancy Breakdown</a></li>
<li><a style="color: #2563eb; font-weight: 600;" href="#medical-standards">7. Medical Fitness Standards</a></li>
<li><a style="color: #2563eb; font-weight: 600;" href="#exam-pattern">8. CBT Exam Pattern &amp; Subject Weightage</a></li>
<li><a style="color: #2563eb; font-weight: 600;" href="#detailed-syllabus">9. Subject-Wise Detailed Syllabus</a></li>
<li><a style="color: #2563eb; font-weight: 600;" href="#how-to-apply">10. Step-by-Step Online Application Process</a></li>
<li><a style="color: #2563eb; font-weight: 600;" href="#faqs">11. Frequently Asked Questions (FAQs)</a></li>
</ol>
</div>
<h2 id="important-dates">1. Important Dates &amp; Schedule</h2>
<p>Interested candidates must adhere to the timeline for CEN 02/2026 Technician Grade-III recruitment process:</p>
<table class="table table-bordered">
<thead>
<tr>
<th>Event / Activity</th>
<th>Scheduled Dates &amp; Time</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>Employment News Publication Date</strong></td>
<td>May 23, 2026</td>
</tr>
<tr>
<td><strong>Opening Date of Online Application</strong></td>
<td>June 30, 2026 (00:00 Hours)</td>
</tr>
<tr>
<td><strong>Closing Date for Submission of Online Application</strong></td>
<td>July 29, 2026 (23:59 Hours)</td>
</tr>
<tr>
<td><strong>Last Date for Online Fee Payment</strong></td>
<td>July 31, 2026 (23:59 Hours)</td>
</tr>
<tr>
<td><strong>Application Correction Window</strong></td>
<td>August 1, 2026 to August 10, 2026 (Fee: Rs. 250/-)</td>
</tr>
<tr>
<td><strong>CBT Examination Window</strong></td>
<td>Will be published on official RRB portals</td>
</tr>
</tbody>
</table>
<h2 id="application-fee">2. Application Fee &amp; Refund Policy</h2>
<p>Fee payment can be completed online via Credit Card, Debit Card, Net Banking, or UPI. The examination fee details and refund structure are as follows:</p>
<table class="table table-bordered">
<thead>
<tr>
<th>Candidate Category</th>
<th>Fee Amount (Rs.)</th>
<th>Refundable Fee (Rs.)</th>
<th>Refund Terms</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>UR / OBC Male Candidates</strong></td>
<td>Rs. 500/-</td>
<td>Rs. 400/-</td>
<td>Refunded to bank account after appearing in CBT exam.</td>
</tr>
<tr>
<td><strong>SC / ST Candidates</strong></td>
<td>Rs. 250/-</td>
<td>Rs. 250/- (Full)</td>
<td>Full refund after appearing in CBT exam.</td>
</tr>
<tr>
<td><strong>Female Candidates</strong></td>
<td>Rs. 250/-</td>
<td>Rs. 250/- (Full)</td>
<td>Full refund after appearing in CBT exam.</td>
</tr>
<tr>
<td><strong>Ex-Servicemen (ExSM)</strong></td>
<td>Rs. 250/-</td>
<td>Rs. 250/- (Full)</td>
<td>Full refund after appearing in CBT exam.</td>
</tr>
<tr>
<td><strong>PwBD Candidates</strong></td>
<td>Rs. 250/-</td>
<td>Rs. 250/- (Full)</td>
<td>Full refund after appearing in CBT exam.</td>
</tr>
<tr>
<td><strong>Transgender / Minorities / EBC</strong></td>
<td>Rs. 250/-</td>
<td>Rs. 250/- (Full)</td>
<td>Full refund upon appearing in CBT (Subject to document verification).</td>
</tr>
</tbody>
</table>
<h2 id="age-limit">3. Age Limit &amp; Category Relaxations</h2>
<p>The age limit for Level-2 Technician Grade-III posts is calculated as on <strong>July 1, 2026</strong>. The normal age limit is <strong>18 to 30 years</strong>, with category-wise relaxations:</p>
<table class="table table-bordered">
<thead>
<tr>
<th>Category</th>
<th>Age Range (as on 01.07.2026)</th>
<th>Upper Age Relaxation</th>
<th>Birth Date Limit (Not earlier than)</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>UR / EWS</strong></td>
<td>18 to 30 Years</td>
<td>Nil</td>
<td>July 2, 1996</td>
</tr>
<tr>
<td><strong>OBC (Non-Creamy Layer)</strong></td>
<td>18 to 33 Years</td>
<td><strong>3 Years</strong></td>
<td>July 2, 1993</td>
</tr>
<tr>
<td><strong>SC / ST</strong></td>
<td>18 to 35 Years</td>
<td><strong>5 Years</strong></td>
<td>July 2, 1991</td>
</tr>
<tr>
<td><strong>PwBD (UR/EWS)</strong></td>
<td>18 to 40 Years</td>
<td><strong>10 Years</strong></td>
<td>July 2, 1986</td>
</tr>
<tr>
<td><strong>PwBD (OBC-NCL)</strong></td>
<td>18 to 43 Years</td>
<td><strong>13 Years</strong></td>
<td>July 2, 1983</td>
</tr>
<tr>
<td><strong>PwBD (SC/ST)</strong></td>
<td>18 to 45 Years</td>
<td><strong>15 Years</strong></td>
<td>July 2, 1981</td>
</tr>
</tbody>
</table>
<h2 id="educational-qualification">4. Prescribed Trade Qualifications &amp; Eligibility</h2>
<p>Eligibility for Technician Grade-III post categories requires specific NCVT/SCVT ITI trades, CCAA apprenticeship, or 10+2 PCM qualification:</p>
<table class="table table-bordered">
<thead>
<tr>
<th>Post Category &amp; Trade Name</th>
<th>Prescribed Educational / Technical Qualification</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>Technician Grade III (S &amp; T)</strong></td>
<td>Matriculation / SSLC plus ITI in Electrician / Electronics Mechanic / Wireman OR CCAA in these trades OR <strong>10+2 with Physics and Mathematics</strong>.</td>
</tr>
<tr>
<td><strong>Technician Grade III Fitter</strong></td>
<td>Matriculation / SSLC plus ITI from recognized NCVT/SCVT in Fitter trade OR CCAA in Fitter trade.</td>
</tr>
<tr>
<td><strong>Technician Grade III Electrical (GS / TRD / TRS)</strong></td>
<td>Matriculation / SSLC plus ITI in Electrician / Wireman / Electronics Mechanic / Mechanic HT, LT Equipments &amp; Cable Jointing OR CCAA in trade.</td>
</tr>
<tr>
<td><strong>Technician Grade III Diesel Mechanical</strong></td>
<td>Matriculation / SSLC plus ITI in Fitter / Mechanic Diesel / Mechanic Motor Vehicle / Tractor Mechanic / Welder / Painter OR CCAA in trade.</td>
</tr>
<tr>
<td><strong>Technician Grade III Welder</strong></td>
<td>Matriculation / SSLC plus ITI in Welder / Welder (Gas &amp; Electric) / Welder (Structural / Pipe / TIG / MIG) OR CCAA in trade.</td>
</tr>
<tr>
<td><strong>Technician Grade III Carriage &amp; Wagon</strong></td>
<td>Matriculation / SSLC plus ITI in Fitter / Carpenter / Welder / Plumber / Pipe Fitter OR CCAA in trade.</td>
</tr>
<tr>
<td><strong>Technician Grade III Refrigeration &amp; AC</strong></td>
<td>Matriculation / SSLC plus ITI in Refrigeration &amp; Air Conditioning Mechanic / Electrician / Wireman / Electronics Mechanic OR CCAA in trade.</td>
</tr>
</tbody>
</table>
<h2 id="merged-categories">5. Merged Post Categories (MPCs) Structure</h2>
<p>Out of 25 post categories in CEN 02/2026, 8 post categories at Level-2 have been merged into <strong>Merged Post Categories (MPCs)</strong> to simplify application preferences for candidates. Empanelled candidates under an MPC may be assigned any constituent post designation during zonal posting.</p>
<h2 id="vacancy-distribution">6. RRB Zone-Wise Vacancy Breakdown</h2>
<p>A total of <strong>6,234 vacancies</strong> are allocated across all Railway Recruitment Boards for Technician Grade-III posts. Here is the zone-wise summary:</p>
<table class="table table-bordered">
<thead>
<tr>
<th>RRB Name</th>
<th>Railway Zone</th>
<th>UR</th>
<th>SC</th>
<th>ST</th>
<th>OBC</th>
<th>EWS</th>
<th>Total Vacancies</th>
</tr>
</thead>
<tbody>
<tr>
<td>Ahmedabad</td>
<td>WR</td>
<td>114</td>
<td>33</td>
<td>16</td>
<td>52</td>
<td>28</td>
<td><strong>243</strong></td>
</tr>
<tr>
<td>Ajmer</td>
<td>NWR / WCR</td>
<td>210</td>
<td>65</td>
<td>32</td>
<td>110</td>
<td>55</td>
<td><strong>472</strong></td>
</tr>
<tr>
<td>Prayagraj</td>
<td>NCR / NR</td>
<td>180</td>
<td>55</td>
<td>28</td>
<td>95</td>
<td>46</td>
<td><strong>404</strong></td>
</tr>
<tr>
<td>Bengaluru</td>
<td>SWR</td>
<td>140</td>
<td>42</td>
<td>20</td>
<td>75</td>
<td>35</td>
<td><strong>312</strong></td>
</tr>
<tr>
<td>Bhopal</td>
<td>WCR / WR</td>
<td>165</td>
<td>50</td>
<td>25</td>
<td>88</td>
<td>42</td>
<td><strong>370</strong></td>
</tr>
<tr>
<td>Bhubaneswar</td>
<td>ECoR</td>
<td>95</td>
<td>28</td>
<td>14</td>
<td>50</td>
<td>23</td>
<td><strong>210</strong></td>
</tr>
<tr>
<td>Bilaspur</td>
<td>SECR / CR</td>
<td>230</td>
<td>70</td>
<td>35</td>
<td>120</td>
<td>58</td>
<td><strong>513</strong></td>
</tr>
<tr>
<td>Chandigarh</td>
<td>NR</td>
<td>105</td>
<td>32</td>
<td>16</td>
<td>56</td>
<td>26</td>
<td><strong>235</strong></td>
</tr>
<tr>
<td>Chennai</td>
<td>SR</td>
<td>220</td>
<td>68</td>
<td>34</td>
<td>115</td>
<td>56</td>
<td><strong>493</strong></td>
</tr>
<tr>
<td>Gorakhpur</td>
<td>NER</td>
<td>85</td>
<td>25</td>
<td>12</td>
<td>45</td>
<td>21</td>
<td><strong>188</strong></td>
</tr>
<tr>
<td>Guwahati</td>
<td>NFR</td>
<td>75</td>
<td>22</td>
<td>11</td>
<td>40</td>
<td>19</td>
<td><strong>167</strong></td>
</tr>
<tr>
<td>Kolkata</td>
<td>ER / SER</td>
<td>240</td>
<td>75</td>
<td>38</td>
<td>125</td>
<td>60</td>
<td><strong>538</strong></td>
</tr>
<tr>
<td>Mumbai</td>
<td>CR / WR</td>
<td>310</td>
<td>95</td>
<td>48</td>
<td>165</td>
<td>78</td>
<td><strong>696</strong></td>
</tr>
<tr>
<td>Ranchi</td>
<td>SER / ECR</td>
<td>155</td>
<td>48</td>
<td>24</td>
<td>82</td>
<td>40</td>
<td><strong>349</strong></td>
</tr>
<tr>
<td>Secunderabad</td>
<td>SCR</td>
<td>200</td>
<td>60</td>
<td>30</td>
<td>105</td>
<td>53</td>
<td><strong>448</strong></td>
</tr>
<tr>
<td>Thiruvananthapuram</td>
<td>SR</td>
<td>180</td>
<td>54</td>
<td>27</td>
<td>96</td>
<td>44</td>
<td><strong>401</strong></td>
</tr>
<tr style="background: #f1f5f9; font-weight: bold;">
<td colspan="2">Total Vacancies (All RRBs)</td>
<td>2704</td>
<td>818</td>
<td>409</td>
<td>1449</td>
<td>684</td>
<td><strong>6234</strong></td>
</tr>
</tbody>
</table>
<h2 id="medical-standards">7. Medical Fitness Standards</h2>
<p>Depending on the trade and post parameters, candidates must meet medical standards ranging from <strong>A-3 to C-1</strong>:</p>
<table class="table table-bordered">
<thead>
<tr>
<th>Medical Category</th>
<th>Applicable Posts</th>
<th>Distant Vision Standard</th>
<th>Near Vision Standard</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>A-3 Standard</strong></td>
<td>Track Machine</td>
<td>6/9, 6/9 with or without glasses.</td>
<td>Sn 0.6, 0.6 with or without glasses.</td>
</tr>
<tr>
<td><strong>B-1 Standard</strong></td>
<td>S&amp;T, Electrical, Fitter, Diesel sheds, C&amp;W, Bridge</td>
<td>6/9, 6/12 with or without glasses.</td>
<td>Sn 0.6, 0.6 with or without glasses.</td>
</tr>
<tr>
<td><strong>B-2 Standard</strong></td>
<td>Crane Driver</td>
<td>6/9, 6/12 with or without glasses.</td>
<td>Sn 0.6, 0.6 with or without glasses.</td>
</tr>
<tr>
<td><strong>C-1 Standard</strong></td>
<td>Workshop Trades (Fitter, Welder, Machinist, Carpenter, etc.)</td>
<td>6/12, 6/18 with or without glasses.</td>
<td>Sn 0.6, 0.6 with or without glasses.</td>
</tr>
</tbody>
</table>
<h2 id="exam-pattern">8. CBT Exam Pattern &amp; Subject Weightage</h2>
<p>The CBT for Level-2 Technician Grade-III consists of 100 objective-type questions to be attempted in 90 minutes:</p>
<table class="table table-bordered">
<thead>
<tr>
<th>Subject Area</th>
<th>Number of Questions</th>
<th>Maximum Marks</th>
<th>Exam Key Features</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>Mathematics</strong></td>
<td>25 Questions</td>
<td>25 Marks</td>
<td rowspan="4">* <strong>Total Duration:</strong> 90 Minutes<br>* <strong>Total Questions:</strong> 100 Questions<br>* <strong>Negative Marking:</strong> 1/3rd mark deducted per wrong answer.<br>* <strong>Normalization:</strong> Applied across multi-session exams.<br>* <strong>Qualifying Marks:</strong> UR/EWS 40%, OBC 30%, SC 30%, ST 25%.</td>
</tr>
<tr>
<td><strong>General Intelligence &amp; Reasoning</strong></td>
<td>25 Questions</td>
<td>25 Marks</td>
</tr>
<tr>
<td><strong>General Science (10th Standard)</strong></td>
<td>40 Questions</td>
<td>40 Marks</td>
</tr>
<tr>
<td><strong>General Awareness</strong></td>
<td>10 Questions</td>
<td>10 Marks</td>
</tr>
<tr style="font-weight: bold; background: #f8fafc;">
<td>Total</td>
<td>100 Questions</td>
<td>100 Marks</td>
</tr>
</tbody>
</table>
<h2 id="detailed-syllabus">9. Subject-Wise Detailed Syllabus</h2>
<h3>A. Mathematics (25 Marks)</h3>
<p>Number System, BODMAS, Decimals, Fractions, LCM and HCF, Ratio and Proportion, Percentages, Mensuration, Time and Work, Time and Distance, Simple Interest, Compound Interest, Profit and Loss, Algebra, Geometry, Trigonometry, Elementary Statistics, Square Root, Age Calculations, Calendar &amp; Clock, Pipes &amp; Cistern.</p>
<h3>B. General Intelligence &amp; Reasoning (25 Marks)</h3>
<p>Analogies, Alphabetical and Number Series, Coding and Decoding, Mathematical operations, Relationships, Syllogism, Jumbling, Venn Diagram, Data Interpretation and Sufficiency, Conclusions and Decision Making, Similarities and Differences, Analytical Reasoning, Classification, Directions, Statement &ndash; Arguments and Assumptions.</p>
<h3>C. General Science (40 Marks)</h3>
<p>The syllabus under General Science covers Physics, Chemistry, and Life Sciences up to 10th standard CBSE / NCERT level (Force, Laws of Motion, Gravitation, Work &amp; Energy, Sound, Light, Electricity &amp; Magnetism, Periodic Classification, Chemical Reactions, Carbon compounds, Cell biology, Human body systems, Plant physiology, Genetics, Ecosystem).</p>
<h3>D. General Awareness (10 Marks)</h3>
<p>General Awareness on Current Affairs in Science &amp; Technology, Sports, Culture, Personalities, Economics, Politics, and any other subjects of importance.</p>
<h2 id="how-to-apply">10. Step-by-Step Online Application Process</h2>
<ol>
<li>Navigate to the official RRB online application web portal: <strong>rrbapply.gov.in</strong>.</li>
<li>Select <strong>"Create an Account"</strong> and register with your active mobile number and email ID. Existing account holders from 2024/2025/2026 CENs should log in with existing credentials.</li>
<li>Complete DigiLocker or Aadhaar verification for faster identity verification.</li>
<li>Fill in personal details, educational qualifications, ITI trade / 10+2 stream, and choose your RRB zone and post preferences.</li>
<li><strong>Live Photograph Capture:</strong> Capture a live picture via camera/webcam against a light background without caps or tinted glasses.</li>
<li>Upload signature image (black ink, running handwriting, size 30KB to 49KB).</li>
<li>Pay application fee online and download a copy of the final submitted application form.</li>
</ol>
<h2 id="faqs">11. Frequently Asked Questions (FAQs)</h2>
<p><strong>Q1. Can 10+2 PCM students apply for RRB Technician Grade-III?</strong><br>Yes, 10+2 pass candidates with Physics and Mathematics are eligible for Technician Grade III (S &amp; T) posts.</p>
<p><strong>Q2. What is the pay scale for Technician Grade-III?</strong><br>Technician Grade-III is a Level-2 post under 7th CPC with an initial pay of Rs. 19,900/- per month.</p>
<p><strong>Q3. What is the total number of vacancies in CEN 02/2026 for Grade-III?</strong><br>There are a total of 6,234 Technician Grade-III vacancies notified across all RRB zones.</p>
<p><strong>Q4. What is the age limit for Grade-III posts?</strong><br>The age limit is 18 to 30 years as on July 1, 2026, with age relaxations for OBC (+3 yrs) and SC/ST (+5 yrs).</p>', 'RRB Technician Grade 3 Recruitment 2026 (CEN 02/2026): Official notification released for 6,234 Level-2 vacancies across ITI and 10+2 PCM trades. Check age limit, trade qualifications, exam pattern, syllabus, and how to apply.', 'Notification', 'publish', 104, '2026-07-20 16:33:24', 'RRB Technician Grade 3, CEN 02/2026, ITI Railway Jobs, 10+2 PCM Railway Jobs, RRB Technician Syllabus, Railway Recruitment 2026', 'Mangal');
INSERT OR REPLACE INTO posts (id, title, slug, cover_image, content, excerpt, category, status, views, created_at, tags, author_name) VALUES (21, 'RRB Technician Grade 1 Signal Syllabus 2026: CBT Exam Pattern, Subject-Wise Topics & Selection Process', 'rrb-technician-grade-1-signal-syllabus-2026-cbt-exam-pattern-subject-wise-topics-selection-process', 'uploads/cover_1784570404_6a5e622433403.jpg', '<p>To successfully clear the Railway Recruitment Board (RRB) <strong>Technician Grade-I Signal</strong> examination under <strong>Centralized Employment Notification (CEN) No. 02/2026</strong>, candidates must possess a comprehensive understanding of the prescribed syllabus and examination pattern. The Technician Grade-I Signal position is a Level-5 post under the 7th Central Pay Commission (CPC) carrying an initial pay of <strong>Rs. 29,200/- per month</strong>. Because this post involves critical signal maintenance, telemetry, and electronic safety operations, the Computer Based Test (CBT) evaluates advanced scientific concepts, computer fundamentals, and technical reasoning.</p>
<p>The selection process for Technician Grade-I Signal comprises a single-stage Computer Based Test (CBT), followed by Document Verification (DV) and a B-1 Medical Fitness Examination. Below is a detailed, section-by-section breakdown of the official syllabus, subject weightage, negative marking rules, and preparation strategies derived directly from the official CEN 02/2026 notification.</p>
<!-- Table of Contents -->
<div class="toc-box" style="background: #f8fafc; border: 1px solid #e2e8f0; padding: 20px; border-radius: 12px; margin-bottom: 30px;">
<h3 style="margin-top: 0; margin-bottom: 12px; font-size: 1.1rem; color: #1e293b; display: flex; align-items: center; gap: 8px;">Table of Contents (Syllabus Index)</h3>
<ol style="margin: 0; padding-left: 20px; line-height: 1.8; font-size: 0.95rem;">
<li><a style="color: #2563eb; font-weight: 600;" href="#selection-stages">1. Selection Stages &amp; Qualification Criteria</a></li>
<li><a style="color: #2563eb; font-weight: 600;" href="#cbt-exam-pattern">2. CBT Exam Pattern &amp; Subject Weightage</a></li>
<li><a style="color: #2563eb; font-weight: 600;" href="#general-awareness">3. General Awareness Detailed Topics</a></li>
<li><a style="color: #2563eb; font-weight: 600;" href="#reasoning-logic">4. General Intelligence &amp; Reasoning Detailed Topics</a></li>
<li><a style="color: #2563eb; font-weight: 600;" href="#computers-basics">5. Basics of Computers &amp; Applications Detailed Topics</a></li>
<li><a style="color: #2563eb; font-weight: 600;" href="#mathematics-section">6. Mathematics &amp; Technical Calculation Detailed Topics</a></li>
<li><a style="color: #2563eb; font-weight: 600;" href="#basic-science-engg">7. Basic Science &amp; Engineering Detailed Topics (35 Marks)</a></li>
<li><a style="color: #2563eb; font-weight: 600;" href="#preparation-strategy">8. Preparation Strategy &amp; Subject Study Plan</a></li>
<li><a style="color: #2563eb; font-weight: 600;" href="#faqs">9. Frequently Asked Questions (FAQs)</a></li>
</ol>
</div>
<h2 id="selection-stages">1. Selection Stages &amp; Qualification Criteria</h2>
<p>The recruitment drive for RRB Technician Grade-I Signal (Category No. 1) follows a rigorous 3-tier selection process to ensure candidates meet the high technical and operational standards of Indian Railways:</p>
<table class="table table-bordered">
<thead>
<tr>
<th>Recruitment Stage</th>
<th>Nature of Assessment</th>
<th>Evaluation Weightage</th>
<th>Key Qualifying Conditions</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>1. Computer Based Test (CBT)</strong></td>
<td>Single-Stage Objective Multiple Choice Examination (100 Questions)</td>
<td><strong>100% Weightage</strong> for shortlisting to DV</td>
<td>Shortlisting for Document Verification is done at a 1:1 ratio based on normalized CBT merit. Minimum qualifying percentage applies.</td>
</tr>
<tr>
<td><strong>2. Document Verification (DV)</strong></td>
<td>Original Certificate &amp; Credentials Scrutiny</td>
<td>Qualifying Only</td>
<td>Verification of educational certificates (B.Sc / Diploma / B.Tech degree), Caste/Category, DOB, and ID proofs.</td>
</tr>
<tr>
<td><strong>3. Medical Examination (ME)</strong></td>
<td>B-1 Standard Health &amp; Visual Fitness Test</td>
<td>Qualifying Only</td>
<td>Distant vision 6/9, 6/9 with or without glasses (Max power 4D). Near vision Sn 0.6, 0.6. Must pass Color, Binocular, Night &amp; Myopic vision tests. Candidates with LASIK surgery are disqualified.</td>
</tr>
</tbody>
</table>
<h2 id="cbt-exam-pattern">2. CBT Exam Pattern &amp; Subject Weightage</h2>
<p>The CBT for Technician Grade-I Signal carries 100 questions to be attempted in 90 minutes. Below is the official subject-wise mark distribution and exam rules:</p>
<table class="table table-bordered">
<thead>
<tr>
<th>Subject / Exam Section</th>
<th>Number of Questions</th>
<th>Maximum Marks</th>
<th>Negative Marking &amp; Qualifying Rules</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>General Awareness</strong></td>
<td>10 Questions</td>
<td>10 Marks</td>
<td rowspan="5">* <strong>Total Exam Duration:</strong> 90 Minutes (1.5 Hours)<br>* <strong>Negative Marking:</strong> 1/3rd (0.33) mark deduction for each incorrect answer.<br>* <strong>Question Languages:</strong> Available in English, Hindi, and 13 regional Indian languages.<br>* <strong>Normalization:</strong> CBT scores normalized across multi-session exams.<br>* <strong>Minimum Qualifying Marks:</strong> UR/EWS: 40%, OBC (NCL): 30%, SC: 30%, ST: 25%.</td>
</tr>
<tr>
<td><strong>General Intelligence &amp; Reasoning</strong></td>
<td>15 Questions</td>
<td>15 Marks</td>
</tr>
<tr>
<td><strong>Basics of Computers &amp; Applications</strong></td>
<td>20 Questions</td>
<td>20 Marks</td>
</tr>
<tr>
<td><strong>Mathematics</strong></td>
<td>20 Questions</td>
<td>20 Marks</td>
</tr>
<tr>
<td><strong>Basic Science &amp; Engineering</strong></td>
<td>35 Questions</td>
<td>35 Marks</td>
</tr>
<tr style="font-weight: bold; background: #f8fafc;">
<td>Total CBT Weightage</td>
<td>100 Questions</td>
<td>100 Marks</td>
</tr>
</tbody>
</table>
<h2 id="general-awareness">3. General Awareness Detailed Topics</h2>
<p>This section carries 10 marks and evaluates a candidate''s awareness of current national events, scientific breakthroughs, and historical context:</p>
<table class="table table-bordered">
<thead>
<tr>
<th>Sub-Topic Area</th>
<th>Detailed Syllabus Coverage</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>Current Affairs</strong></td>
<td>National &amp; International events, Government Schemes, Rail Infrastructure updates, Awards, Summits, and Policy changes.</td>
</tr>
<tr>
<td><strong>Indian Polity &amp; Constitution</strong></td>
<td>Fundamental Rights, Preamble, Parliament, Constitutional bodies, Executive structure, and recent legislative amendments.</td>
</tr>
<tr>
<td><strong>Indian History &amp; Freedom Movement</strong></td>
<td>Modern Indian History, 1857 Revolt, Indian National Congress sessions, Independence struggle, and prominent leaders.</td>
</tr>
<tr>
<td><strong>Geography &amp; Economy</strong></td>
<td>Physical geography of India, Rivers, Mountains, Climate, Economic planning, Union Budget highlights, and GST basics.</td>
</tr>
<tr>
<td><strong>Sports &amp; Culture</strong></td>
<td>Major sports tournaments, Olympic events, Indian classical dances, festivals, heritage sites, and literature awards.</td>
</tr>
</tbody>
</table>
<h2 id="reasoning-logic">4. General Intelligence &amp; Reasoning Detailed Topics</h2>
<p>Carrying 15 marks, this section tests logical reasoning, pattern recognition, and decision-making capabilities:</p>
<table class="table table-bordered">
<thead>
<tr>
<th>Topic Category</th>
<th>Sub-Topics &amp; Question Types Covered</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>Analogies &amp; Classification</strong></td>
<td>Number Analogies, Letter/Word Analogies, Odd One Out, Semantic Classifications.</td>
</tr>
<tr>
<td><strong>Series &amp; Sequences</strong></td>
<td>Number Series, Alphabet Series, Mixed Sequences, Missing Number Puzzles.</td>
</tr>
<tr>
<td><strong>Coding &amp; Decoding</strong></td>
<td>Letter Coding, Number Substitution, Matrix Coding, Deciphering message statements.</td>
</tr>
<tr>
<td><strong>Mathematical Logic &amp; Syllogisms</strong></td>
<td>Mathematical Operators, Venn Diagrams, Syllogisms (Statement &amp; Conclusions), Binary Logic.</td>
</tr>
<tr>
<td><strong>Analytical &amp; Directional Reasoning</strong></td>
<td>Blood Relations, Direction Sense Tests, Seating Arrangements, Statement-Arguments &amp; Assumptions.</td>
</tr>
</tbody>
</table>
<h2 id="computers-basics">5. Basics of Computers &amp; Applications Detailed Topics</h2>
<p>Carrying 20 marks, this dedicated computer section evaluates fundamental IT knowledge essential for computerized railway signal management systems:</p>
<table class="table table-bordered">
<thead>
<tr>
<th>Computer Module</th>
<th>Syllabus Topics &amp; Core Concepts</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>Computer Architecture &amp; Hardware</strong></td>
<td>CPU components (ALU, Control Unit), Input/Output devices (Scanners, Printers, Keyboards), Storage devices (RAM, ROM, HDD, SSD, Flash memory).</td>
</tr>
<tr>
<td><strong>Operating Systems</strong></td>
<td>Functions of OS, File Management, Windows OS concepts, Unix, Linux, Memory Management, Process Control.</td>
</tr>
<tr>
<td><strong>MS Office Suite</strong></td>
<td>MS Word (formatting, shortcuts), MS Excel (spreadsheets, formulas, charts), MS PowerPoint (slides, transitions).</td>
</tr>
<tr>
<td><strong>Data Representation</strong></td>
<td>Binary, Octal, Decimal, and Hexadecimal conversion systems, ASCII and Unicode encodings.</td>
</tr>
<tr>
<td><strong>Networking &amp; Internet</strong></td>
<td>OSI Model layers, IP Addressing, Routers, Switches, LAN/WAN, Web Browsers, Protocols (HTTP, HTTPS, FTP, TCP/IP).</td>
</tr>
<tr>
<td><strong>Cyber Security &amp; Malware</strong></td>
<td>Computer Viruses, Worms, Trojan Horses, Firewalls, Antivirus tools, Phishing, Encryption fundamentals.</td>
</tr>
</tbody>
</table>
<h2 id="mathematics-section">6. Mathematics &amp; Technical Calculation Detailed Topics</h2>
<p>Carrying 20 marks, the Mathematics section covers numerical calculations, algebraic techniques, and higher secondary mathematical foundations:</p>
<table class="table table-bordered">
<thead>
<tr>
<th>Mathematical Branch</th>
<th>Detailed Syllabus Topics</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>Arithmetic &amp; Number Systems</strong></td>
<td>Number System, Rational &amp; Irrational Numbers, BODMAS, Decimals, Fractions, LCM &amp; HCF, Ratios, Percentages, Averages.</td>
</tr>
<tr>
<td><strong>Commercial Mathematics</strong></td>
<td>Profit &amp; Loss, Simple &amp; Compound Interest, Time &amp; Work, Pipes &amp; Cisterns, Time &amp; Distance, Speed calculations.</td>
</tr>
<tr>
<td><strong>Algebra &amp; Mensuration</strong></td>
<td>Basic Algebraic Identities, Linear Equations, Quadratic Equations, Polynomials, Area &amp; Volume of 2D/3D shapes.</td>
</tr>
<tr>
<td><strong>Trigonometry &amp; Statistics</strong></td>
<td>Heights &amp; Distances, Trigonometric Ratios &amp; Identities, Mean, Median, Mode, Standard Deviation, Elementary Probability.</td>
</tr>
<tr>
<td><strong>Advanced Topics</strong></td>
<td>Matrices and Determinants (Addition, Multiplication, Transpose, Determinant values, Inverse of matrices).</td>
</tr>
</tbody>
</table>
<h2 id="basic-science-engg">7. Basic Science &amp; Engineering Detailed Topics (35 Marks)</h2>
<p>This is the most critical section of the exam, accounting for <strong>35% of total CBT marks</strong>. It focuses heavily on basic engineering physics, electrical circuits, and electronics:</p>
<table class="table table-bordered">
<thead>
<tr>
<th>Engineering Science Branch</th>
<th>Detailed Syllabus Topics &amp; Core Themes</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>Engineering Mechanics &amp; Physics</strong></td>
<td>Units and Measurements, Mass, Weight and Density, Work, Power and Energy, Speed and Velocity, Heat and Temperature, Thermal Expansion, Force and Laws of Motion, Friction.</td>
</tr>
<tr>
<td><strong>Basic Electricity &amp; DC Circuits</strong></td>
<td>Electric Current, Voltage, Resistance, Conductance, Ohm&rsquo;s Law, Kirchhoff&rsquo;s Voltage &amp; Current Laws (KVL/KCL), Series and Parallel Circuits, Capacitors, Inductors, Electromagnetism, Magnetic Circuits.</td>
</tr>
<tr>
<td><strong>Basic Electronics &amp; Semiconductors</strong></td>
<td>Energy Band Theory, Intrinsic and Extrinsic Semiconductors, P-N Junction Diodes, Zener Diodes, Rectifiers, Transistors (BJT, FET, MOSFET), Operational Amplifiers (Op-Amps), Inverting and Non-Inverting Amplifiers.</td>
</tr>
<tr>
<td><strong>Digital Electronics</strong></td>
<td>Logic Gates (AND, OR, NOT, NAND, NOR, XOR, XNOR), Boolean Algebra, De Morgan&rsquo;s Theorems, Combinational Logic Circuits (Adders, Subtractors, Multiplexers), Sequential Circuits (Flip-flops, Registers, Counters).</td>
</tr>
<tr>
<td><strong>Signals, Systems &amp; Telecommunication</strong></td>
<td>Analog and Digital Signals, Modulation techniques (AM, FM, PM), Sampling theorem, Communication systems basics, Transducers, Measurements and Electronic Test Instrumentation (CRO, Multimeters, Signal Generators).</td>
</tr>
</tbody>
</table>
<h2 id="preparation-strategy">8. Preparation Strategy &amp; Subject Study Plan</h2>
<ul>
<li><strong>Prioritize Basic Science &amp; Engineering:</strong> Allocate at least 40% of your daily study time to engineering physics, basic electronics, and digital circuits, as this single section carries 35 marks.</li>
<li><strong>Master Computer Applications:</strong> Focus on MS Office shortcuts, networking protocols, and binary conversions to easily score in the 20-mark computer section.</li>
<li><strong>Accuracy &amp; Negative Marking Control:</strong> Since 1/3rd mark is deducted for incorrect responses, practice timed mock tests to eliminate guessing habits.</li>
<li><strong>Target Normalized Cut-Offs:</strong> Practice previous year RRB papers to build speed for completing 100 questions within the 90-minute limit.</li>
</ul>
<h2 id="faqs">9. Frequently Asked Questions (FAQs)</h2>
<p><strong>Q1. What is the total duration and mark count of RRB Technician Grade-I Signal CBT?</strong><br>The CBT exam consists of 100 questions for 100 marks, with a total time duration of 90 minutes.</p>
<p><strong>Q2. Which subject carries the highest weightage in Grade-I Signal syllabus?</strong><br>Basic Science &amp; Engineering carries the highest weightage with 35 questions (35 marks).</p>
<p><strong>Q3. Is there negative marking in Technician Grade-I Signal CBT?</strong><br>Yes, 1/3rd (0.33) of the allocated marks will be deducted for each incorrect answer.</p>
<p><strong>Q4. Are Matrices and Determinants included in the Mathematics syllabus?</strong><br>Yes, basic concepts of Matrices and Determinants are explicitly included in the official CEN 02/2026 Mathematics syllabus for Grade-I Signal.</p>', 'RRB Technician Grade 1 Signal Syllabus 2026 (CEN 02/2026): Detailed breakdown of CBT exam pattern, 35-mark Basic Science & Engineering, Computer Applications, Maths, Reasoning, negative marking, and study plan.', 'Syllabus', 'publish', 179, '2026-07-20 17:52:39', 'RRB Technician Grade 1 Syllabus, CEN 02/2026 Syllabus, Signal Syllabus, Railway Exam Pattern 2026, Level 5 Syllabus', 'Mangal');
INSERT OR REPLACE INTO posts (id, title, slug, cover_image, content, excerpt, category, status, views, created_at, tags, author_name) VALUES (22, 'RRB Technician Grade 3 Syllabus 2026: CBT Exam Pattern, Trade-Wise Topics & Marking Scheme', 'rrb-technician-grade-3-syllabus-2026-cbt-exam-pattern-trade-wise-topics-marking-scheme', 'uploads/cover_1784570771_6a5e639389b6d.jpg', '<p>The Railway Recruitment Board (RRB) has released the official syllabus for <strong>Technician Grade-III posts</strong> under <strong>Centralized Employment Notification (CEN) No. 02/2026</strong>. Covering <strong>6,234 vacancies</strong> across 24 technical trades (Level-2, initial pay <strong>Rs. 19,900/- per month</strong>), this recruitment examination tests candidates on 10th standard General Science, Mathematics, Reasoning, and General Awareness.</p>
<p>Whether you hold an NCVT/SCVT ITI certificate in Fitter, Electrician, Welder, Diesel Mechanic, Wireman, Turner, Machinist, or passed 10+2 PCM (Physics &amp; Maths), all applicants will appear for a single-stage Computer Based Test (CBT). In this comprehensive guide, we present the complete subject-wise syllabus breakdown, exam pattern, subject weightage, negative marking rules, and preparation tips compiled strictly from the official CEN 02/2026 notification.</p>
<!-- Table of Contents -->
<div class="toc-box" style="background: #f8fafc; border: 1px solid #e2e8f0; padding: 20px; border-radius: 12px; margin-bottom: 30px;">
<h3 style="margin-top: 0; margin-bottom: 12px; font-size: 1.1rem; color: #1e293b; display: flex; align-items: center; gap: 8px;">Table of Contents (Syllabus Index)</h3>
<ol style="margin: 0; padding-left: 20px; line-height: 1.8; font-size: 0.95rem;">
<li><a style="color: #2563eb; font-weight: 600;" href="#selection-stages">1. Selection Stages Overview</a></li>
<li><a style="color: #2563eb; font-weight: 600;" href="#cbt-exam-pattern">2. CBT Exam Pattern &amp; Section-Wise Marks</a></li>
<li><a style="color: #2563eb; font-weight: 600;" href="#mathematics-syllabus">3. Mathematics Syllabus Breakdown (25 Marks)</a></li>
<li><a style="color: #2563eb; font-weight: 600;" href="#reasoning-syllabus">4. General Intelligence &amp; Reasoning Syllabus (25 Marks)</a></li>
<li><a style="color: #2563eb; font-weight: 600;" href="#general-science">5. General Science Detailed Syllabus (40 Marks - Highest)</a></li>
<li><a style="color: #2563eb; font-weight: 600;" href="#general-awareness">6. General Awareness Detailed Syllabus (10 Marks)</a></li>
<li><a style="color: #2563eb; font-weight: 600;" href="#merged-categories">7. Merged Post Categories (MPCs) &amp; Trade Scoring</a></li>
<li><a style="color: #2563eb; font-weight: 600;" href="#preparation-tips">8. Preparation Strategy &amp; Recommended Books</a></li>
<li><a style="color: #2563eb; font-weight: 600;" href="#faqs">9. Frequently Asked Questions (FAQs)</a></li>
</ol>
</div>
<h2 id="selection-stages">1. Selection Stages Overview</h2>
<p>The recruitment process for RRB Technician Grade-III (Level-2) consists of three consecutive stages:</p>
<table class="table table-bordered">
<thead>
<tr>
<th>Stage</th>
<th>Evaluation Mode</th>
<th>Weightage &amp; Rule</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>1. Computer Based Test (CBT)</strong></td>
<td>Single-stage objective exam (100 Questions, 90 Minutes)</td>
<td><strong>100% Weightage</strong> for shortlisting to DV. Shortlisting is done at 1:1 ratio based on normalized CBT merit.</td>
</tr>
<tr>
<td><strong>2. Document Verification (DV)</strong></td>
<td>Original educational &amp; trade certificate verification</td>
<td>Qualifying Only. Verifies 10th marksheet, ITI / NCVT / SCVT / CCAA certificate, Caste certificate, and ID proof.</td>
</tr>
<tr>
<td><strong>3. Medical Examination (ME)</strong></td>
<td>Medical Fitness Test as per opted trade standard</td>
<td>Qualifying Only. Standards vary by trade: A-3 (Track Machine), B-1 (S&amp;T, Fitter, Electrical, C&amp;W), B-2 (Crane Driver), C-1 (Workshop trades).</td>
</tr>
</tbody>
</table>
<h2 id="cbt-exam-pattern">2. CBT Exam Pattern &amp; Section-Wise Marks</h2>
<p>The CBT examination comprises 100 multiple-choice questions to be completed in 90 minutes. Below is the section-wise distribution of questions and marks:</p>
<table class="table table-bordered">
<thead>
<tr>
<th>Subject Section</th>
<th>Number of Questions</th>
<th>Maximum Marks</th>
<th>Negative Marking &amp; Qualifying Rules</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>Mathematics</strong></td>
<td>25 Questions</td>
<td>25 Marks</td>
<td rowspan="4">* <strong>Exam Duration:</strong> 90 Minutes (1.5 Hours)<br>* <strong>Negative Marking:</strong> 1/3rd (0.33) mark deducted per wrong answer.<br>* <strong>Question Medium:</strong> English, Hindi, and 13 regional languages.<br>* <strong>Score Normalization:</strong> Applied across multi-session exams.<br>* <strong>Min Qualifying Percentage:</strong> UR/EWS: 40%, OBC (NCL): 30%, SC: 30%, ST: 25%.</td>
</tr>
<tr>
<td><strong>General Intelligence &amp; Reasoning</strong></td>
<td>25 Questions</td>
<td>25 Marks</td>
</tr>
<tr>
<td><strong>General Science (10th Standard)</strong></td>
<td>40 Questions</td>
<td>40 Marks</td>
</tr>
<tr>
<td><strong>General Awareness</strong></td>
<td>10 Questions</td>
<td>10 Marks</td>
</tr>
<tr style="font-weight: bold; background: #f8fafc;">
<td>Total CBT Weightage</td>
<td>100 Questions</td>
<td>100 Marks</td>
</tr>
</tbody>
</table>
<h2 id="mathematics-syllabus">3. Mathematics Syllabus Breakdown (25 Marks)</h2>
<p>The Mathematics section carries 25 marks and focuses on arithmetic calculations, basic algebra, geometry, and mensuration:</p>
<table class="table table-bordered">
<thead>
<tr>
<th>Sub-Topic Area</th>
<th>Detailed Syllabus Coverage Topics</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>Number Systems &amp; Basic Math</strong></td>
<td>Number System, BODMAS Rule, Decimals, Fractions, LCM &amp; HCF, Square Root, Age Calculations, Calendar &amp; Clock.</td>
</tr>
<tr>
<td><strong>Commercial &amp; Applied Math</strong></td>
<td>Ratio and Proportion, Percentages, Profit and Loss, Simple Interest, Compound Interest, Time and Work, Pipes and Cisterns, Time and Distance.</td>
</tr>
<tr>
<td><strong>Algebra &amp; Geometry</strong></td>
<td>Elementary Algebra, Linear Equations, Basic Geometry (angles, lines, triangles, circles), Mensuration (Perimeter, Area, Surface Area, Volume of 2D/3D shapes).</td>
</tr>
<tr>
<td><strong>Trigonometry &amp; Statistics</strong></td>
<td>Basic Trigonometric Ratios, Elementary Statistics (Mean, Median, Mode, Data Interpretation tables).</td>
</tr>
</tbody>
</table>
<h2 id="reasoning-syllabus">4. General Intelligence &amp; Reasoning Syllabus (25 Marks)</h2>
<p>Carrying 25 marks, this section evaluates logical deduction, spatial reasoning, and pattern recognition skills:</p>
<table class="table table-bordered">
<thead>
<tr>
<th>Reasoning Category</th>
<th>Detailed Syllabus Topics</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>Analogies &amp; Sequences</strong></td>
<td>Number Analogies, Letter Analogies, Alphabetical Series, Number Series, Coding and Decoding.</td>
</tr>
<tr>
<td><strong>Logical Reasoning</strong></td>
<td>Mathematical Operations, Relationships, Syllogism, Jumbling, Venn Diagrams, Data Interpretation &amp; Sufficiency.</td>
</tr>
<tr>
<td><strong>Analytical &amp; Verbal Logic</strong></td>
<td>Conclusions and Decision Making, Similarities and Differences, Analytical Reasoning, Classification, Directions, Statement &ndash; Arguments and Assumptions.</td>
</tr>
</tbody>
</table>
<h2 id="general-science">5. General Science Detailed Syllabus (40 Marks - Highest)</h2>
<p>Accounting for <strong>40% of the total CBT paper</strong>, General Science is the single most important section in Technician Grade-III CBT. The syllabus covers 10th standard CBSE/NCERT Physics, Chemistry, and Life Sciences:</p>
<table class="table table-bordered">
<thead>
<tr>
<th>Science Discipline</th>
<th>Detailed Syllabus Topics (10th Standard Level)</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>Physics (10th Standard)</strong></td>
<td>Units and Dimensions, Motion and Laws of Motion, Work, Energy and Power, Gravitation, Mass and Weight, Pressure and Fluids, Sound Waves, Light (Reflection, Refraction, Lenses, Mirrors), Electricity (Ohm&rsquo;s Law, Resistance, Circuits, Heating Effect), Magnetism and Magnetic Effect of Electric Current, Sources of Energy.</td>
</tr>
<tr>
<td><strong>Chemistry (10th Standard)</strong></td>
<td>Matter in Our Surroundings, Elements, Compounds and Mixtures, Atomic Structure, Chemical Reactions and Equations, Acids, Bases and Salts, Periodic Classification of Elements, Metals and Non-Metals, Carbon and Its Compounds, Chemical Bonding.</td>
</tr>
<tr>
<td><strong>Life Sciences / Biology (10th Standard)</strong></td>
<td>Cell Structure and Functions, Plant and Animal Tissues, Life Processes (Nutrition, Respiration, Transportation, Excretion), Control and Coordination in Plants &amp; Animals, Reproduction in Organisms, Heredity and Evolution, Our Environment, Natural Resources Management.</td>
</tr>
</tbody>
</table>
<h2 id="general-awareness">6. General Awareness Detailed Syllabus (10 Marks)</h2>
<p>Carrying 10 marks, this section covers awareness of current developments and general knowledge across key areas:</p>
<table class="table table-bordered">
<thead>
<tr>
<th>Awareness Domain</th>
<th>Core Syllabus Topics Covered</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>Current Affairs</strong></td>
<td>National &amp; International Current Affairs, Science &amp; Technology updates, Rail Transport achievements, Awards &amp; Honors.</td>
</tr>
<tr>
<td><strong>General Knowledge</strong></td>
<td>Sports, Culture &amp; Heritage of India, Personalities in news, Indian Economy highlights, Indian Politics and Constitution basics.</td>
</tr>
</tbody>
</table>
<h2 id="merged-categories">7. Merged Post Categories (MPCs) &amp; Trade Scoring</h2>
<p>In CEN 02/2026, Level-2 Technician posts share a common single CBT paper. Out of 25 post categories, 8 post categories are grouped as <strong>Merged Post Categories (MPCs)</strong>. Candidates do not need to take separate trade tests; selection is based strictly on the 100-mark CBT score.</p>
<h2 id="preparation-tips">8. Preparation Strategy &amp; Recommended Books</h2>
<ul>
<li><strong>Focus on 10th Science (NCERT):</strong> Since General Science carries 40 marks, thoroughly revise Class 9th and 10th NCERT Physics, Chemistry, and Biology textbooks.</li>
<li><strong>Practice Numerical Mathematics:</strong> Practice 25 maths questions daily to improve speed and accuracy in BODMAS, Mensuration, and Time &amp; Work.</li>
<li><strong>Negative Marking Control:</strong> Always avoid wild guessing to protect against the 1/3rd negative marking penalty.</li>
</ul>
<h2 id="faqs">9. Frequently Asked Questions (FAQs)</h2>
<p><strong>Q1. What is the weightage of General Science in RRB Technician Grade-III CBT?</strong><br>General Science carries the highest weightage with 40 questions (40 marks out of 100).</p>
<p><strong>Q2. Is there a separate trade test for ITI candidates in Grade-III?</strong><br>No, there is no separate trade test. Selection is based solely on the single-stage 100-mark CBT exam score.</p>
<p><strong>Q3. What is the negative marking penalty in Grade-III CBT?</strong><br>1/3rd (0.33) mark is deducted for each incorrect answer.</p>', 'RRB Technician Grade 3 Syllabus 2026 (CEN 02/2026): Detailed CBT exam pattern, 40-mark 10th General Science syllabus, Maths, Reasoning, General Awareness, qualifying marks, and trade exam guide.', 'Syllabus', 'publish', 141, '2026-07-20 17:52:39', 'RRB Technician Grade 3 Syllabus, CEN 02/2026 Syllabus, ITI Railway Syllabus, 10+2 PCM Syllabus, Railway Exam Pattern 2026', 'Mangal');
INSERT OR REPLACE INTO settings (setting_key, setting_value) VALUES ('site_title', 'RRB Group D Answer Key');
INSERT OR REPLACE INTO settings (setting_key, setting_value) VALUES ('site_tagline', 'Notification,Answer key,Result');
INSERT OR REPLACE INTO settings (setting_key, setting_value) VALUES ('site_description', 'Official Railway Recruitment Board RRB Group D Answer Key, Cut Off Marks, Question Paper PDF, CBT Syllabus & Result Updates 2026.');
INSERT OR REPLACE INTO settings (setting_key, setting_value) VALUES ('tinymce_api_key', '8i4591ss9uufs1s0kiykcdwrj8kbe1lnjso5qz32qog2uqbp');
INSERT OR REPLACE INTO settings (setting_key, setting_value) VALUES ('google_search_console', '');
INSERT OR REPLACE INTO settings (setting_key, setting_value) VALUES ('google_analytics', '');
INSERT OR REPLACE INTO settings (setting_key, setting_value) VALUES ('robots_txt', 'User-agent: *
Allow: /
Disallow: /includes/
Disallow: /admin/
Sitemap: https://rrbgroupdanswerkey.com/sitemap.xml');
INSERT OR REPLACE INTO settings (setting_key, setting_value) VALUES ('google_adsense_header', '');
INSERT OR REPLACE INTO settings (setting_key, setting_value) VALUES ('google_adsense_top', '');
INSERT OR REPLACE INTO settings (setting_key, setting_value) VALUES ('google_adsense_bottom', '');
INSERT OR REPLACE INTO settings (setting_key, setting_value) VALUES ('google_adsense_sidebar', '<br />
<b>Warning</b>:  Undefined variable $google_adsense_sidebar_val in <b>/var/www/html/dashboard.php</b> on line <b>1819</b><br />');
INSERT OR REPLACE INTO settings (setting_key, setting_value) VALUES ('onesignal_app_id', '');
INSERT OR REPLACE INTO settings (setting_key, setting_value) VALUES ('onesignal_api_key', '');
INSERT OR REPLACE INTO settings (setting_key, setting_value) VALUES ('site_categories', 'Notification, Answer Key, Admit Card, Result, Syllabus');
INSERT OR REPLACE INTO settings (setting_key, setting_value) VALUES ('ads_status', '0');
INSERT OR REPLACE INTO settings (setting_key, setting_value) VALUES ('hidden_categories', 'Answer Key, Admit Card, Result');
INSERT OR REPLACE INTO settings (setting_key, setting_value) VALUES ('site_menu', '[{"title":"Home","url":"\/","visible":1},{"title":"Notification","url":"\/notification\/","visible":1},{"title":"Answer Key","url":"\/answer-key\/","visible":0},{"title":"Admit Card","url":"\/admit-card\/","visible":0},{"title":"Result","url":"\/result\/","visible":0},{"title":"Syllabus","url":"\/syllabus\/","visible":1}]');
INSERT OR REPLACE INTO settings (setting_key, setting_value) VALUES ('site_favicon', 'https://rrbgroupdanswerkey.com/uploads/favicon_1784561384_6a5e3ee8e8ce5.png');
INSERT OR REPLACE INTO settings (setting_key, setting_value) VALUES ('site_logo', 'https://rrbgroupdanswerkey.com/uploads/logo_1784561384_6a5e3ee8e7bad.png');
INSERT OR REPLACE INTO settings (setting_key, setting_value) VALUES ('default_meta_description', 'Get official RRB Group D Answer Key 2026, CBT exam pattern, syllabus, zone-wise cut off marks, and live exam result updates.');
INSERT OR REPLACE INTO subscribers (id, email, created_at) VALUES (1, 'test.direct@gmail.com', '2026-07-21 06:26:00');
INSERT OR REPLACE INTO subscribers (id, email, created_at) VALUES (2, 'from_site5_no_resolve@gmail.com', '2026-07-21 06:27:03');
INSERT OR REPLACE INTO subscribers (id, email, created_at) VALUES (3, 'railway.aspirant.2026@gmail.com', '2026-07-21 06:27:17');
INSERT OR REPLACE INTO subscribers (id, email, created_at) VALUES (4, 'test.final.verified@gmail.com', '2026-07-21 06:27:38');
INSERT OR REPLACE INTO subscribers (id, email, created_at) VALUES (17, 'twrfdyme@immenseignite.info', '2026-07-25 22:31:23');
INSERT OR REPLACE INTO subscribers (id, email, created_at) VALUES (18, 'dlnxgmnk@immenseignite.info', '2026-07-25 22:31:51');
INSERT OR REPLACE INTO subscribers (id, email, created_at) VALUES (19, 'mhpinfhe@immenseignite.info', '2026-07-25 22:32:11');