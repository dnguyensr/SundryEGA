class Streamers extends React.Component {
	constructor(props) {
		super(props)
}


	render () {
		let streamers = this.props.streamers.map((artist) => {
			return(
				<div key={streamer.id}>
					<Streamer streamer={streamer} />
				</div>
			)
		})
		return(
			<div>
				{ streamers }
			</div>
		)
	}
}

