var Photographers = React.createClass({
  getInitialState() {
    return { photographers: [] }
  },

  componentDidMount() {
    $.getJSON(
      '/api/v1/photographers.json', response => {
        this.setState({ photographers: response })
    })
  },

  render: function () {
    var photographers = this.state.photographers.map((photographer) => {
      return (
      <div className="col-xs-12 col-sm-6 gaming-profile" key={photographer.id}>
        <Photographer photographer={photographer} />
      </div>
      )
    })
    return (
      <div className="container">
        <div className="row">
          <h1>Studio Sundry</h1>
          <hr />
          { photographers}
        </div>
      </div>
    )
  }
})
