<div id="challengeContent" class="row">
<h4 rel="tooltip" class="hashtag" data-toggle="tooltip" data-placement="bottom" title="Use this tag when sharing.">#$Tag</h4>
<div class="well">
	<h5>The Challenge</h5>
	<div class="jumbotron">
		<p>$Description</p>
	</div>
	<ul class="nav nav-tabs" style="margin-bottom: 15px;">
    <li class="active"><a href="#projects" data-toggle="tab">Show Projects</a></li>
    <li><a href="#response" data-toggle="tab">Responses</a></li>
    <li><a href="#chat" data-toggle="tab">Chat about this</a></li>
    
    
</ul>
<div ng-controller="ProjectsCtrl" id="myTabContent" class="tab-content">
    <div class="tab-pane fade active in" id="projects">
        <p>Below are a list of projects you available for you to contribute to.<br>
           Don't see the project you want? Feel free to 
           <a href="c/$PageID/p/add">
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
		        <a data-toggle="modal" data-target="#addProject" href="javascript:void(0)" class="btn btn-success btn-xs">Submit a Response</a>
		    </div>
		</div>
    </div>

</div>
	
</div>
</div>

<div ng-controller="ResponseCtrl" class="modal" id="addProject">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title">Submit a Response</h4>
            </div>
            <div class="modal-body">
                <form ng-submit="add()" class="form-horizontal">
				    <fieldset>
				        <legend>Response to Challenge</legend>
				        <div class="form-group">
				            <label for="inputName" class="col-lg-2 control-label">What are you called?</label>
				            <div class="col-lg-10">
				                <input type="text" pattern="[a-zA-Z0-9\\s]+" ng-model="name" class="form-control" id="inputName" value="Anonymous" placeholder="Anonymous">
				            </div>
				        </div>
				        <div class="form-group">
				            <label for="inputTitle" class="col-lg-2 control-label">Title</label>
				            <div class="col-lg-10">
				                <input type="text" pattern="[a-zA-Z0-9\\s]+" ng-model="title" class="form-control" id="inputTitle" placeholder="Title your Response">
				            </div>
				        </div>
				        <div class="form-group">
				            <label for="inputLink" class="col-lg-2 control-label">Link to Code</label>
				            <div class="col-lg-10">
				                <input type="url" ng-model="link" class="form-control" id="inputLink" placeholder="Link to plunkr, jsbin, gist or other code site">
				            </div>
				        </div>
				        <div class="form-group">
				            <label for="code" class="col-lg-2 control-label">Code</label>
				            <div class="col-lg-10">
				                <textarea ng-model="code" class="form-control" rows="4" id="code"></textarea>
				                <span class="help-block">Paste your code here if you'd like</span>
				            </div>
				        </div>
				        <div class="form-group">
				            <label for="description" class="col-lg-2 control-label">Description</label>
				            <div class="col-lg-10">
				                <textarea ng-model="description" class="form-control" rows="3" id="description"></textarea>
				                <span class="help-block">Describe what your code does or fixes.</span>
				            </div>
				        </div>
				        <div class="form-group">
				            <label class="col-lg-2 control-label">Project</label>
				            <div class="col-lg-10">
				            	<% loop $Projects %>
				                <div class="radio radio-primary">
				                    <label>
				                        <input type="radio" ng-model="project" name="optionsRadios" id="optionsRadios$icon" value="$title">
				                        <i class="$icon"></i> $title
				                    </label>
				                </div>
				                <% end_loop %>
				                <p>Don't see your project? <a href="c/$PageID/p/add">
           	<i class="icon-material-add-box"></i> 
           	Add another project to the list
           </a>
				            </div>
				        </div>
				        <div class="form-group">
				            <div class="col-lg-10 col-lg-offset-2">
				                <button class="btn btn-default">Cancel</button>
				                <button type="submit" class="btn btn-primary">Submit</button>
				            </div>
				        </div>
				    </fieldset>
				</form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>