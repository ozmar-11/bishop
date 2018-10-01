class Bishop
	def total_movements_to_arrive_position(initial_position, target_position)
		return -1 unless isSameColor?(initial_position, target_position)
		is_in_one_jump?(initial_position, target_position) ? 1 : 2
	end

	private
	def is_in_one_jump?(first_position, target_position)
		is_up_and_right?(first_position, target_position) || is_up_and_left?(first_position, target_position) ||
		is_down_and_right?(first_position, target_position) || is_down_and_left?(first_position, target_position)
	end

	def is_up_and_left?(first_position, target_position)
		(first_position - target_position)%9 == 0
	end

	def is_up_and_right?(first_position, target_position)
		(first_position - target_position)%7 ==0
	end

	def is_down_and_right?(first_position, target_position)
		(target_position-first_position)%9 == 0
	end

	def is_down_and_left?(first_position, target_position)
		(target_position-first_position)%7 == 0
	end

	def isSameColor?(first_position, second_position)
		first_position_row = ((first_position-1)/8)+1
		second_position_row = ((second_position-1)/8)+1
		(first_position.odd? == second_position.odd? && first_position_row.odd? == second_position_row.odd?) || (first_position.odd? != second_position.odd? && first_position_row.odd? != second_position_row.odd?)
	end
end
