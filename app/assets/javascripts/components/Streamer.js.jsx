var Streamer = React.createClass({
  render() {
    return (
      <div className="row">
        <div className="col-xs-3">
          <img src={ this.props.streamer.avatar } className="img-responsive" />
        </div>
        <div className="col-xs-9">
          <h1 className="gamertag">{ this.props.streamer.handle }</h1>
          <p>{ this.props.streamer.profile }</p>
          <p>Games Played: { this.props.streamer.games }</p>
          <div className="sns">
            <a href={ this.props.streamer.twitch }>
              <img src="assets/icons/icon_twitch" alt="twitch icon" className="img-responsive sns-icon" />
            </a>
            { this.props.streamer.youtube.length > 1 &&
              <a href={ this.props.streamer.youtube }>
                <img src="assets/icons/icon_youtube" alt="youtube icon" className="img-responsive sns-icon" />
              </a>
              }

            { this.props.streamer.twitter.length > 1 &&
              <a href={ this.props.streamer.twitter }>
                <img src="assets/icons/icon_twitter" alt="twitter icon" className="img-responsive sns-icon" />
              </a>
              }
            { this.props.streamer.instagram.length > 1 &&
              <a href={ this.props.streamer.instagram }>
                <img src="assets/icons/icon_instagram" alt="instagram icon" className="img-responsive sns-icon" />
              </a>
              }
          </div>
        </div>
      </div>
    )
  }
})
