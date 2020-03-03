require_relative 'date_range'

module Hotel
  class Reservation < DateRange
    attr_reader :reservation_id, :date_range, :room_number
    # attr_accessor :total_cost - do we need this up here?
    
    def initialize(reservation_id, date_range, room_number, price_per_night: 200, total_cost: nil)
      @reservation_id = reservation_id
      valid_reservation_id

      @date_range = date_range
      @room_number = room_number
      @price_per_night = price_per_night
      @total_cost = total_cost
    end
    
    def total_cost
      total_reservation_cost = @price_per_night * @date_range.num_nights
      
      return total_reservation_cost
    end
    
    # how will you set reservation id??
    
    def valid_reservation_id
      if @reservation_id < 1
        raise ArgumentError.new("Reservation id must be greater than 0")
      end
    end
  
    
  end
end


# validate id number (more than 0, not nil)

# connect to collection of reservations in frontdesk similar to rideshare connect method

# need to somehow account for modify status in available rooms