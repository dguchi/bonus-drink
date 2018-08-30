class BonusDrink
  def self.total_count_for(amount)
    raise ArgumentError if amount < 0
    return calc_add_bottle(amount, 0)
  end

  # 追加される本数
  def self.calc_add_bottle(add, remain)
    add_new = (add + remain) / 3
    remain_new = (add + remain) % 3

    if 0 == add_new
      return add
    else
      return add + calc_add_bottle(add_new, remain_new)
    end
  end
end