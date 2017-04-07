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
        <Streamer streamer={streamer} />
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
