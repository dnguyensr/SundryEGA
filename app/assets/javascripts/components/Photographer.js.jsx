var Photographer = React.createClass({
    render () {
        return (
        <div className="row">
          <div className="col-xs-3">
            <img src={ this.props.photographer.avatar } className="img-responsive" />
          </div>
          <div className="col-xs-9">
            <h1 className="gamertag">{ this.props.photographer.handle }</h1>
            <p>{ this.props.photographer.profile }</p>
            <div className="sns">
              { this.props.photographer.youtube != null &&
                <a href={ this.props.photographer.youtube }>
                  <img src="assets/icons/icon_youtube" alt="youtube icon" className="img-responsive sns-icon" />
                </a>
              }
              { this.props.photographer.twitter != null &&
                <a href={ this.props.photographer.twitter }>
                  <img src="assets/icons/icon_twitter" alt="twitter icon" className="img-responsive sns-icon" />
                </a>
              }
              { this.props.photographer.instagram != null &&
                <a href={ this.props.photographer.instagram }>
                  <img src="assets/icons/icon_instagram" alt="instagram icon" className="img-responsive sns-icon" />
                </a>
              }
            </div>
          </div>
        </div>
        )
    }
})
