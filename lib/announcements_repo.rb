class AnnouncementsRepo
  def get_all
    [
      {"id"=> 1, "date"=> '2017-05-01', "title"=> '1st Treatment Success', "description"=> 'Woo, go us'},
      {"id"=> 2, "date"=> '2017-05-05', "title"=> '2nd Treatment Delayed', "description"=> 'Boo'},
      {"id"=> 3, "date"=> '2017-05-07', "title"=> 'Need Help', "description"=> 'Send lemons'}
    ]
  end
end
