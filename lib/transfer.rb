class Transfer
  # your code here
  attr_accessor :status
  attr_reader :sender, :receiver, :amount 
  def initialize(sender, receiver, amount)
    @sender=sender 
    @receiver=receiver
    @amount=amount
    @status= "pending"
end 
def valid?
    sender.valid? && receiver.valid?
  end 
   def execute_transaction 
     if valid? &&  sender.balance > amount && self.status ="pending"
       sender.balance -= amount 
       receiver.balance += amount 
       @status= "complete"
     else 
       @status= "rejected"
       "Transaction rejected. Please check your account balance."
   end 
 end 
end 