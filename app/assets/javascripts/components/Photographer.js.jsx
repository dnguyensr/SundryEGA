var Photographer = React.createClass({
    render: function () {
        return (
        <div className="col-xs-12 col-sm-6 gaming-profile">
          <div className="row">
            <div className="col-xs-3">
              avatar
              {/*<%= image_tag(photographer.avatar, className:"img-responsive")%>*/}
            </div>
            <div className="col-xs-9">
              handle
              profile
              {/*<h1 className="gamertag"><%= photographer.handle %></h1>*/}
              {/*<p><%= photographer.profile %></p>*/}
              <div className="sns">
                sns
                {/*<%= link_to image_tag("icons/icon_youtube", alt:"youtube icon", className:"img-responsive sns-icon"), photographer.youtube if photographer.youtube.present? %>
                <%= link_to image_tag("icons/icon_twitter", alt:"twitter icon", className:"img-responsive sns-icon"), photographer.twitter if photographer.twitter.present? %>
                <%= link_to image_tag("icons/icon_instagram", alt:"instagram icon", className:"img-responsive sns-icon"), photographer.instagram  if photographer.instagram.present? %>*/}
              </div>
            </div>
          </div>
        </div>
        )
    }
})
