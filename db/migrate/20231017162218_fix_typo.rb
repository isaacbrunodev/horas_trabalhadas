class FixTypo    
    def self.up
        rename_colum :times_logs, :take_date, :task_date
    end
def self.down
  rename_colum :time_logs, :task_date, :take_date
  end
end
            