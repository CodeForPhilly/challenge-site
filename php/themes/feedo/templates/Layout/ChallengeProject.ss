
<div id="challengeContent" class="row">
<h4 rel="tooltip" class="hashtag" data-toggle="tooltip" data-placement="bottom" title="Use this tag when sharing.">#$Tag</h4>
<div class="well">
	<h5>The Challenge</h5>
	<div class="jumbotron">
		<p>$Description</p>
	</div>
	<ul class="nav nav-tabs" style="margin-bottom: 15px;">
		<% if AddProject %>
	    <li class="active"><a href="#add" data-toggle="tab">Add a Project</a></li>
	    <% end_if %>
	    <li><a href="#view" data-toggle="tab">View All Projects</a></li>
	    <li><a href="#chat" data-toggle="tab">Chat about this</a></li>
	    
	    
	</ul>
<div ng-controller="ProjectsCtrl" id="myTabContent" class="tab-content">
	<% if AddProject %>
    <div class="tab-pane fade active in" id="add">
        <p>Enter a civic project below.
        </p>

        <h5></h5>
        <div class="list-group">
		    <form ng-submit="add()" class="form-horizontal">
				    <fieldset>
				        <legend>The Project</legend>
				        <div class="form-group">
				            <label for="inputTitle" class="col-lg-2 control-label">Title</label>
				            <div class="col-lg-10">
				                <input type="text" pattern="[a-zA-Z0-9\\s]+" ng-model="title" class="form-control" id="inputTitle" placeholder="Project Title">
				            </div>
				        </div>
				        <div class="form-group">
				            <label for="inputLink" class="col-lg-2 control-label">Project URL</label>
				            <div class="col-lg-10">
				                <input type="url" ng-model="link" class="form-control" id="inputLink" placeholder="Code for Philly Project URL">
				            </div>
				        </div>
				        <div class="form-group">
				            <label for="snippet" class="col-lg-2 control-label">Brief Description</label>
				            <div class="col-lg-10">
				                <textarea ng-model="snippet" class="form-control" rows="3" id="snippet"></textarea>
				                <span class="help-block">Keep it short and sweet.</span>
				            </div>
				        </div>
				        <div class="form-group">
				            <label for="issues" class="col-lg-2 control-label">List of Issues</label>
				            <div class="col-lg-10">
				                <textarea ng-model="issues" class="form-control" rows="3" id="issues"></textarea>
				                <span class="help-block">List any issues you would like challengers to help fix.</span>
				            </div>
				        </div>
				        <div class="form-group">
				            <label class="col-lg-2 control-label">Icon</label>
				            <div class="col-lg-10">
				            	<% loop $Icons %>
				                <div class="radio radio-primary">
				                    <label>
				                        <input type="radio" ng-model="icon" name="optionsRadios" id="optionsRadios$icon" value="$iconClass">
				                        <i class="$iconClass"></i> $icon
				                    </label>
				                </div>
				                <% end_loop %>
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
    </div>
    <% end_if %>

    <div class="tab-pane fade" id="chat">
       <h2>Chat about this.</h2>
		<div class="post">
			<p>Comment</p>
			<a href="#" class="btn btn-sup btn-material-pink btn-raised">
		        <span>Comment</span>
		    </a>
		</div>
    </div>

    <div class="tab-pane fade" id="view">
        <div class="panel panel-info">
		    <div class="panel-heading">
		        <h3 class="panel-title">All Projects for $Tag</h3>
		    </div>
		    <div class="panel-body">
		    	<% loop Projects %>
		        <div class="well">
		        	<div class="row-action-primary">
			            <i class="$icon"></i>
			        </div>
			        <div class="row-content">
			            <div class="action-secondary"><a href="$link" target="_blank"><i class="icon-material-info"></i></a></div>
			            <h4 class="list-group-item-heading">$title</h4>
			            <p class="list-group-item-text">$snippet</p>
			        </div>
			        <div class="list-group-separator"></div>
		        </div>
		        <% end_loop %>
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
                <p>Add a Project to this challenge</p>
                <form class="form-horizontal">
				    <fieldset>
				        <legend>Legend</legend>
				        <div class="form-group">
				            <label for="inputEmail" class="col-lg-2 control-label">Email</label>
				            <div class="col-lg-10">
				                <input type="email" class="form-control" id="inputEmail" placeholder="Email">
				            </div>
				        </div>
				        <div class="form-group">
				            <label for="inputPassword" class="col-lg-2 control-label">Password</label>
				            <div class="col-lg-10">
				                <input type="password" class="form-control" id="inputPassword" placeholder="Password">
				                <div class="checkbox">
				                    <label>
				                        <input type="checkbox"> Checkbox
				                    </label>
				                </div>
				            </div>
				        </div>
				        <div class="form-group">
				            <label for="inputFile" class="col-lg-2 control-label">File</label>
				            <div class="col-lg-10">
				                <input type="text" readonly="" class="form-control floating-label" placeholder="Browse...">
				                <input type="file" id="inputFile" multiple="">
				            </div>
				        </div>
				        <div class="form-group">
				            <label for="textArea" class="col-lg-2 control-label">Textarea</label>
				            <div class="col-lg-10">
				                <textarea class="form-control" rows="3" id="textArea"></textarea>
				                <span class="help-block">A longer block of help text that breaks onto a new line and may extend beyond one line.</span>
				            </div>
				        </div>
				        <div class="form-group">
				            <label class="col-lg-2 control-label">Radios</label>
				            <div class="col-lg-10">
				                <div class="radio radio-primary">
				                    <label>
				                        <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked="">
				                        Option one is this
				                    </label>
				                </div>
				                <div class="radio radio-primary">
				                    <label>
				                        <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
				                        Option two can be something else
				                    </label>
				                </div>
				            </div>
				        </div>
				        <div class="form-group">
				            <label for="select" class="col-lg-2 control-label">Selects</label>
				            <div class="col-lg-10">
				                <select class="form-control" id="select">
				                    <option>1</option>
				                    <option>2</option>
				                    <option>3</option>
				                    <option>4</option>
				                    <option>5</option>
				                </select>
				                <br>
				                <select multiple="" class="form-control">
				                    <option>1</option>
				                    <option>2</option>
				                    <option>3</option>
				                    <option>4</option>
				                    <option>5</option>
				                </select>
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