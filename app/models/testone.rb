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

end
