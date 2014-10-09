<div id="challengeContent" class="row">
<h4 rel="tooltip" class="hashtag" data-toggle="tooltip" data-placement="bottom" title="Use this tag when sharing.">#$Tag</h4>
<div class="well">
	<h5>The Challenge</h5>
	<div class="jumbotron">
		<p>$Description</p>
	</div>
	<ul class="nav nav-tabs" style="margin-bottom: 15px;">
    <li class="active"><a href="#projects" data-toggle="tab">Show Projects</a></li>
    <li><a href="#response" data-toggle="tab">View Responses</a></li>
    <li><a href="#chat" data-toggle="tab">Chat about this</a></li>
    
    
</ul>
<div ng-controller="ProjectsCtrl" id="myTabContent" class="tab-content">
    <div class="tab-pane fade active in" id="projects">
        <p>Below are a list of projects you available for you to contribute to.<br>
           Don't see the project you want? Feel free to 
           <a data-toggle="modal" data-target="#addProject" href="#">
           	<i class="icon-material-add-box"></i> 
           	Add another project to the list
           </a>
        </p>

        <h5>The Projects</h5>
        <div class="list-group">
		    <div ng-repeat="project in projects" class="list-group-item">
		    	<div class="row-action-primary">
		            <i class="{{project.icon}}"></i>
		        </div>
		        <div class="row-content">
		            <div class="action-secondary"><a href="{{project.link}}" target="_blank"><i class="icon-material-info"></i></a></div>
		            <h4 class="list-group-item-heading">{{project.title}}</h4>
		            <p class="list-group-item-text">\{{project.snippet}}</p>
		        </div>
		        <div class="list-group-separator"></div>
		    </div>
		    
		    
		</div>
    </div>

    <div class="tab-pane fade" id="chat">
       <h2>Chat about this.</h2>
		<div class="post">
			<p>Comment</p>
			<a href="#" class="btn btn-sup btn-material-pink btn-raised">
		        <span>Comment</span>
		    </a>
		</div>
    </div>

    <div class="tab-pane fade" id="response">
        <div class="panel panel-info">
		    <div class="panel-heading">
		        <h3 class="panel-title">Responses to #$Tag</h3>
		    </div>
		    <div class="panel-body">
		        There are currently no responses to this challenge. Be the first!
		        <a href="javascript:void(0)" class="btn btn-success btn-xs">Submit a Response</a>
		    </div>
		</div>
    </div>

</div>
	
</div>
</div>

<div class="modal" id="addProject">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title">Add a Project</h4>
            </div>
            <div class="modal-body">
                <p>Housekeeping. standby.</p>
                
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>