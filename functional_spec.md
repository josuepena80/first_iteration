<!DOCTYPE html>
<html>
<body>

<h1>Symptom Tracker CLI Functional Specification</h1>

<p>This CLI allows the user to record their symptoms for later use by a healthcare professional.</p>

<h2>Basic Operations</h2>
<ul>
<li>User Story: a user of this CLI would want to keep track of their symptoms in order to provide a full, useful description of them to their healthcare provider.</li>

<li>A user would also need to be able to destroy previous records, in order to keep a record that is in accordance with their interests.</li>

</ul>
<h2>Continuous Operations</h2>
<ul>
<li>The user would want to record several symptoms without restarting the app, in order to make its use less tedious.</li>

</ul>
<h2>Functional Requirements</h2>
<ul>

<li>The Tracker must set the user on a good track by providing relevant information such as date, so the user can better asses the duration of their symptoms.</li>
<li>The Tracker must prompt the user for their input.
<li>The CLI must display wether the symptom was correctly added to the record, and respond to invalid attemps gracefully.</li>
<li>The Symptom Tracker must allow the user to include the following in each report:

<ol>

<li>Date and estimated time</li>
<li>Description of the symptom</li>
<li>Estimated bodily system affected</li>
<li>Duration of the symptom</li>

</ol>
</li>
<li>The Tracker must allow the user to add more symptoms after each use.</li>
<li>The tracker must allow the user to view their records.</li>
</ul>

</body>
</hmtl>
