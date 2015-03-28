
function loop_array(){
	var array_doc =db.positions_pages.aggregate(
			{$unwind : "$values"},
			{$project : {
				_id:0,
				id : "$values.id", 
				descriptionSnippe:"$values.descriptionSnippe",
				jobPoster : "$values.jobPoster", 
				company : "$values.company",
				locationDescription:"$values.locationDescription"
				}
			}
			)
	array_doc .forEach(function(doc){
		db.positions.insert(doc)
	}
}
