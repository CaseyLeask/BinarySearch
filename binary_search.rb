class Array
  def binary_search(left=0, right=self.length-1, item)
    return nil if self.empty?

    while (left <= right) do
      mid = left + (right - left) / 2

      case item <=> self[mid]
      when -1
        right = mid - 1
      when 0
        return mid
      when 1
        left = mid + 1
      end
    end

    nil
  end
end
