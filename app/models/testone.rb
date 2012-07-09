class Testone < ActiveRecord::Base

	def dim1 new_row_number
		(self.row_number - new_row_number.to_i).abs
	end

	def dim_i1 new_row_number
		self.group_code == 'I' ? self.dim1(new_row_number) : '-'
	end

	def dim_e1 new_row_number
		self.group_code == 'E' ? self.dim1(new_row_number) : '-'
	end

	def dim_s1 new_row_number
		self.group_code == 'S' ? self.dim1(new_row_number) : '-'
	end

	def int_i1 new_row_number
		int1 = self.dim1(new_row_number) - 2
		return ((self.group_code == 'I') and (int1 > 0)) ? int1 : 0
	end

	def int_e1 new_row_number
		int1 = self.dim1(new_row_number) - 2
		return ((self.group_code == 'E') and (int1 > 0)) ? int1 : 0
	end

	def int_s1 new_row_number
		int1 = self.dim1(new_row_number) - 2
		return ((self.group_code == 'S') and (int1 > 0)) ? int1 : 0
	end

	def dis1 new_row_number
		check1 = ( new_row_number.to_i < 10 ) and ( self.row_number < 10 )
		check2 = ( new_row_number.to_i > 9 ) and ( self.row_number > 9 )
		main_check = check1 or check2
		final = ( main_check == true ) ? 0 : 1
		return final
	end

	def bali1 new_row_number
		if self.group_code == 'I'
			final = ( self.row_number < 10 ) ? ( self.row_number - new_row_number.to_i ) : ( new_row_number.to_i - self.row_number )
		else
			final = 0
		end
		return final
	end

	def bale1 new_row_number
		if self.group_code == 'E'
			final = ( self.row_number < 10 ) ? ( self.row_number - new_row_number.to_i ) : ( new_row_number.to_i - self.row_number )
		else
			final = 0
		end
		return final
	end

	def bals1 new_row_number
		if self.group_code == 'S'
			final = ( self.row_number < 10 ) ? ( self.row_number - new_row_number.to_i ) : ( new_row_number.to_i - self.row_number )
		else
			final = 0
		end
		return final
	end
	
	def self.avg_row_number
    row_numbers = Testone.all.map { |p| p.row_number.to_f }
    return row_numbers.sum/row_numbers.count
  end

  def self.avg_new_order new_order
    array_new_order = new_order.split(',').collect { |p| p.to_f }
    return array_new_order.sum/array_new_order.count
  end
  
	def rho1 new_row_number, new_order
		return ( new_row_number.to_i - Testone.avg_new_order(new_order) ) * ( self.row_number - Testone.avg_row_number )
	end

	def rho2 new_row_number, new_order
		rho2_factor = new_row_number.to_i - Testone.avg_new_order(new_order)
		return rho2_factor * rho2_factor
	end

	def rho3 new_row_number, new_order
		rho3_factor = self.row_number - Testone.avg_row_number
		return rho3_factor * rho3_factor
	end

end