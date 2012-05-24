class Testtwo < ActiveRecord::Base
	
	def dim2 new_row_number
		(self.row_number - new_row_number.to_i).abs
	end

	def dim_i2 new_row_number
		self.group_code == 'I' ? self.dim2(new_row_number) : '-'
	end

	def dim_e2 new_row_number
		self.group_code == 'E' ? self.dim2(new_row_number) : '-'
	end

	def dim_s2 new_row_number
		self.group_code == 'S' ? self.dim2(new_row_number) : '-'
	end

	def int_i2 new_row_number
		int2 = self.dim2(new_row_number) - 2
		return ((self.group_code == 'I') and (int2 > 0)) ? int2 : 0
	end

	def int_e2 new_row_number
		int2 = self.dim2(new_row_number) - 2
		return ((self.group_code == 'E') and (int2 > 0)) ? int2 : 0
	end

	def int_s2 new_row_number
		int2 = self.dim2(new_row_number) - 2
		return ((self.group_code == 'S') and (int2 > 0)) ? int2 : 0
	end

	def dis2 new_row_number
		check1 = ( new_row_number.to_i < 10 ) and ( self.row_number < 10 )
		check2 = ( new_row_number.to_i > 9 ) and ( self.row_number > 9 )
		main_check = check1 or check2
		final = ( main_check == true ) ? 0 : 1
		return final
	end

	def bali2 new_row_number
		if self.group_code == 'I'
			final = ( self.row_number < 10 ) ? ( self.row_number - new_row_number.to_i ) : ( new_row_number.to_i - self.row_number )
		else
			final = 0
		end
		return final
	end

	def bale2 new_row_number
		if self.group_code == 'E'
			final = ( self.row_number < 10 ) ? ( self.row_number - new_row_number.to_i ) : ( new_row_number.to_i - self.row_number )
		else
			final = 0
		end
		return final
	end

	def bals2 new_row_number
		if self.group_code == 'S'
			final = ( self.row_number < 10 ) ? ( self.row_number - new_row_number.to_i ) : ( new_row_number.to_i - self.row_number )
		else
			final = 0
		end
		return final
	end
	
	def self.avg_row_number
    row_numbers = Testtwo.all.map { |p| p.row_number.to_f }
    return row_numbers.sum/row_numbers.count
  end

  def self.avg_new_order new_order
    array_new_order = new_order.split(',').collect { |p| p.to_f }
    return array_new_order.sum/array_new_order.count
  end
  
	def rho4 new_row_number, new_order
		return ( new_row_number.to_i - Testtwo.avg_new_order(new_order) ) * ( self.row_number - Testtwo.avg_row_number )
	end

	def rho5 new_row_number, new_order
		rho5_factor = new_row_number.to_i - Testtwo.avg_new_order(new_order)
		return rho5_factor * rho5_factor
	end

	def rho6 new_row_number, new_order
		rho6_factor = self.row_number - Testtwo.avg_row_number
		return rho6_factor * rho6_factor
	end
end
