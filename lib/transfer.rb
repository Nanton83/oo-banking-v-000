class Transfer
  
  attr_accessor :status, :sender, :receiver, :amount
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end
  
  def valid?
    if @sender.valid? && @receiver.valid?
      true
    else
      false
    end
  end
  
  def execute_transaction
<<<<<<< HEAD
    if @sender.balance >= @amount && @status == "pending"
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
    else
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end
  
  def reverse_transfer
    if status == "complete"
    @receiver.balance -= @amount
    @sender.balance += @amount
    @status = "reversed"
  end
end 
  
=======
    if self.valid? == true
      @receiver.balance += @amount
    else
      ""
    end
  end
  
>>>>>>> 87bbb1710c48e89a36fcfc58d48ffe546e20de60
end
