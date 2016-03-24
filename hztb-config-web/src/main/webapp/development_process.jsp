<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<title>hztb - development process</title>
<link rel="stylesheet" href="styles/styles.css" type="text/css"
	media="screen">
</head>
<body>

	<div id="content" class="container">
		<br />
		<h1>Development Process</h1>

		<div class="section grid grid15">
			<h2>Contents</h2>
			<ul>
				<li><a href="#overview">1.Overview</a></li>
				<li><a href="#developerinstructions">2.Developer
						Instructions</a>
					<ul>
						<li><a href="#installation">2.1 Installation</a></li>
						<li><a href="#githubpermissions">2.2 GitHub Permissions </a></li>
						<li><a href="#setupgit">2.3 Setup GIT for the first time</a></li>
						<li><a href="#setup">2.4 Setup</a></li>
						<li><a href="#developingcode">2.5 Developing Code</a></li>
					</ul></li>
				<li><a href="#branchingandmerging">3.Branching and Merging</a></li>
				<li><a href="#repositorystructuraloverview">4.Repository
						Structural Overview</a>
					<ul>
						<li><a href="#developbranch">4.1 Develop Branch</a></li>
						<li><a href="#releasebranch">4.2 Release Branch</a></li>
						<li><a href="#masterbranch">4.3 Master Branch</a></li>
					</ul></li>
				<li><a href="#gatekeeping">5.Gatekeeping Instructions</a></li>
				<li><a href="#gitcommands">6.Git Commands</a></li>

				<li><a href="#qualitygates">7.Quality Gates</a>
					<ul>
						<li> <a href="#sonarqube">7.1 Installation of SonarQube</a></li>
				<li><a href="#checkcodequality">7.2 Check code quality</a></li>

			</ul>
			</li>

			<li><a href="eclipsesetup.jsp">8.Eclipse Setup</a></li>
			<li><a href="androidstudiosetup.jsp">9.Android Studio Setup</a></li>
			<li><a href="xcodesetup.jsp">10. Xcode Setup</a></li>


			</ul>
		</div>

		<div class="section grid grid15">

			<a id="overview">
				<h2>1.Overview</h2>
				<p>This is the mapping from the GitHub workflow to pur
					development initially for hztb project from the point of view of
					the developer and gatekeeper of the repository. The instructions
					are a basic introduction into GitHub and how it works for us.</p>
			</a>

		</div>


		<div class="section grid grid15">

			<a id="developerinstructions">
				<h2>2.Developer Instructions</h2>
				<p>GIT will seem cryptic and obscure until you understand it
					conceptually, in other words to understand what it is doing under
					the hood. A useful site that explains this is
					http://sbf5.com/~cduan/technical/git/</p>
				<p>The strangest part for GIT for anyone used to other source
					versioning systems is the use of the command line rather than an
					integrated GUI tool within eclipse. Usage of the command line is
					recommended because the set of GIT commands most commonly run in
					small(and they are very fast to run) and he GUI tools are not
					particularly good. The first and most important practice of git
					therefore is to learn the most commong GIT commands by heart.</p>
				<p>Below is a very sanitised set of common commands and
					instructions. For a more thorough introduction to GIT, efer to one
					of the many decent GIT tutorials online, for example
					https://www.atlassian.com/git/tutorials/</p>
			</a> <a id="installation">

				<h4>2.1 Installation</h4>
				<p>Download GIT from https://git-scm.com/downloads and choose
					the windows distribution. Choose a installation directory that
					isn't windows program files.</p>
				<p style="color: blue;">GIT Bash is the main UI for running GIT
					commands and can be found under "start/all programs/Git Bash"</p>
			</a><a id="githubpermissions">

				<h4>2.2 GitHub Permissions</h4>
				<p>send email to srinivas.kairamkonda@gmail.com to get access to
					GIT repositories.</p>
			</a><a id="setupgit">

				<h4>2.3 Setup GIT for the first time</h4>
				<p>whenever you create a GIT check-in, GIT uses user information
					for history purposes. Setup this information like so:</p>
				<p style="color: blue;">
					git config --global user.name "John Doe" <br> git config
					--global user.email johndoe@example.com<br> git config
					--global core.autocrlf true
				</p>

				<p>GIT needs the SSH keys to be setup to access the repository.
					Please follow the following guide to do this:</p>

				<p style="color: blue;">https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/</p>
				<p>It should now be possible to clone the project - see below</p>
			</a> <a id="setup">

				<h4>2.4 Setup</h4>
				<p>1. Create a initial directory where you would like to store
					all the repositories</p>

				<p>2. Visit the project page in the Github which belongs to the
					repository you would like to clone.</p>

				<p>3. Copy the URL from the SSH clone url text box</p>

				<p>4. on git bash, 'cd' to your initial code directory and run</p>


				<p style="color: blue;">git clone
					git@github.com:svsdigitaltechnologies/hztb.git -b develop</p>

				<p>5. you now have the project on your local machine to you and
					can import the project into the IDE.</p>
			</a> <a id=developingcode>

				<h4>2.5 Developing Code</h4>
				<p>1. The above clone specifies that you are in the develop
					branch.</p>

				<p style="color: blue;">cd hztb</p>


				<p>2. Create a new branch that you are going to work on. This
					branch will contain only your changes and you can merge these into
					develop branch.</p>

				<p style="color: blue;">git checkout -b srinivas_branch</p>

				<p>3. To add new files to the repository(and include updated
					files) - ready for commit</p>

				<p style="color: blue;">git add .</p>

				<p>4. To add commit points into your local repository.</p>

				<p style="color: blue;">git commit -m 'added new code for
					registration flow'</p>

				<p>5. you push the branch upto GitHub so your branch is visible
					in the GitHub Project</p>
				<p style="color: blue;">git push origin srinivas_branch</p>

				<p>6. After the final push, a pull request is normally created
					through the GITHub project page and the todo be found here.
					https://help.github.com/articles/creating-a-pull-request/</p>

				<p>7. After the pull request has been created, the Gatekeeper
					will receive an email signaling you wish to add code to the Develop
					branch. They will then process the pull request</p>
			</a>

		</div>
		<div class="section grid grid15">

			<a id="#branchingandmerging">
				<h2>3.Branching and Merging</h2>
				<p>TODO.</p>
			</a>
		</div>

		<div class="section grid grid15">

			<a id="developbranch">
				<h2>4.1 Develop Branch</h2>
				<p>This is the branch that a developer will branch to develop
					new code. Developer has to create a local branch from developer
					branch before ANY development gets carried out.</p>
				<p>When the coding is completed, the developer will create a
					pull request from local branch to the develop branch.</p>
				<p>The Gatekeeper or peer will be the person to review the
					source changes and choose to comment on individual lines of code,
					reject or process the pull request and merge the changes into the
					develop branch</p>
				<p>On successful completion of the pull request, when the module
					is finished, then the local branch should be deleted. All the
					commits are recorded from the local branch into the develop branch
					so no development history will be lost. The deployment target of
					develop branch should be dev environment.</p>
			</a> <a id="releasebranch">
				<h2>4.2 Release Branch</h2>
				<p>This is the branch targetted for a particular release. This
					is branched from the Develop branch before the release and deployed
					into test/qa environment. The end result should be a release
					candidate.</p>
			</a> <a id="masterbranch">
				<h2>4.3 Master Branch</h2>
				<p>This is the branch that represents the code that is in
					production. This branch should not really be branched at any point
					and code added to this branch would come from pull requests from
					the release branch once the release has been deployed into the
					production.</p>
			</a>

		</div>
		<div class="section grid grid15">

			<a id="gatekeeping">
				<h2>5.Gatekeeping Instructions</h2>
				<p>A person should be identified at the beginning of any
					development to review any code or bug fix pull requests. This is
					essentially a code review of the changes that have been carried out
					in the branch and the requested to be merged in the pull request.
					The Gatekeeper can comment on any particular line of code through
					the project repository page and if they would like to signal an
					issue then developer can respond to the comment either with a
					response or a code change. This comments will be recorded in the
					Github repository. When all the issues are addressed, then the
					Gatekeeper can merge the pull request. GitHub can normally do this
					automatically but merge issues can be avoided by the Developer if
					they pull the latest code from the Develop branch before created
					the pull request with the following:</p>
				<p style="color: blue;">git pull origin develop</p>
				<p>This will pull all the latest changes from the develop branch
					into the current local branch.</p>

			</a>
		</div>

		<div class="section grid grid15">

			<a id="gitcommands">
				<h2>6.Git Commands</h2>
				<p style="color: blue;">git clone
					git@github.com:svsdigitaltechnologies/hztb.git -b develop ==>
					clones a repository</p>
				<p style="color: blue;">git checkout -b srinivas_branch ==>
					creates a new local branch for the cloned repository</p>

				<p style="color: blue;">git add . ==> add new/updated files to
					local branch</p>

				<p style="color: blue;">git commit -m 'added new code for
					registration flow' ==> commit files to the local branch</p>

				<p style="color: blue;">git push origin srinivas_branch ==>
					pushes changes to your remote branch</p>

				<p style="color: blue;">git stash ==> stages/removes your
					current change set</p>
				<p style="color: blue;">git checkout -b "myNewBranch" ==>
					creates a new branch(name it to your satisfaction) and checks it
					out</p>
				<p style="color: blue;">git stash apply ==> applies the stashed
					changes to your branch</p>
			</a>
		</div>
		<div class="section grid grid15">

			<a id="qualitygates">
				<h2>7.Quality Gates</h2>
				<p>1. Run unit tests</p>
				<p>2. Run acceptance tests, if applicable</p>
				<p>3. Sanity tests</p>
				<p>4. Leave the code in no worse quality in the commit</p>
				<p>The developer can install SonarQube on the local machine to
					address point 4 above.</p> <a id="sonarqube">
					<h4>7.1 Installation of SonarQube</h4>
					<p>TODO</p>
			</a> <a id="checkcodequality">
					<h4>7.2 Check code quality</h4>
					<p>TODO</p>
			</a>

			</a>
		</div>
	</div>
</body>
</html>