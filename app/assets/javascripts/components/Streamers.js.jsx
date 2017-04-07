var Streamers = React.createClass({
  getInitialState() {
    return { streamers: [] }
  },

  componentDidMount() {
    $.getJSON(
      '/api/v1/streamers.json', response => {
        this.setState({ streamers: response })
    })
  },

  render: function () {
    var streamers = this.state.streamers.map((streamer) => {
      return (
      <div className="col-xs-12 col-sm-6 gaming-profile" key={streamer.id}>
        <div className="row">
          <div className="col-xs-3">
            <img src={streamer.avatar} className="img-responsive" />
          </div>
          <div className="col-xs-9">
            <h1 className="gamertag">{ streamer.handle }</h1>
            <p>{ streamer.profile }</p>
            <p>Games Played: { streamer.games }</p>
            <div className="sns">
              <a href={ streamer.twitch }>
                <img src="assets/icons/icon_twitch" alt="twitch icon" className="img-responsive sns-icon" />
              </a>
              { streamer.youtube.length > 1 &&
                <a href={ streamer.youtube }>
                  <img src="assets/icons/icon_youtube" alt="youtube icon" className="img-responsive sns-icon" />
                </a>
               }

              { streamer.twitter.length > 1 &&
                <a href={ streamer.twitter }>
                  <img src="assets/icons/icon_twitter" alt="twitter icon" className="img-responsive sns-icon" />
                </a>
               }
              { streamer.instagram.length > 1 &&
                <a href={ streamer.instagram }>
                  <img src="assets/icons/icon_instagram" alt="instagram icon" className="img-responsive sns-icon" />
                </a>

               }
            </div>
          </div>
        </div>
      </div>
      )
    })
    return (
      <div className="container">
        <div className="row">
          <h1>Gaming</h1>
          <hr />
            {streamers}
        </div>
      </div>
    )
  }
})
