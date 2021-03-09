TourAttachment.delete_all
Booking.delete_all
Segment.delete_all
Tour.delete_all
DestinationOffice.delete_all
SalesOffice.delete_all
User.delete_all

user = User.create(email: 'test@test.com', password: 'test@test.com')
puts 'User created'
tour = Tour.create(reference_number: 'ABCD123456789', tour_name: 'Tour Name', departure_date: '2021-12-01', termination_date: '2021-12-31', status: 'GOH', user_id: 1)
puts 'Tour created'
destination_office = DestinationOffice.create(name: 'London', country: 'United Kingdom', city_name: 'London', city_code: 'LON')
puts 'Destination Office created'
sales_office = SalesOffice.create(name: 'Tokyo', country: 'Japan', city_name: 'Tokyo', city_code: 'TYO')
puts 'Sales Office created'
segment = Segment.create(segment_date: '2021-12-01', tour_id: 1, destination_office_id: 1)
puts 'Segment created'
# booking = Booking.create(type: '', segment_id: 1)
# puts 'Booking created'
# tour_attachment = TourAttachment.create(type: '', file: 'rooming list', tour_id: 1)
# puts 'Tour attachment created'
