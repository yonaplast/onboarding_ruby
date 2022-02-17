def group_by_marks(marks, pass_marks)
    marks.group_by { |key, value|
        value <= pass_marks ? "Failed" : "Passed" if !key.empty?
    }       
  end
marks = {"Ramesh":23, "Vivek":40, "Harsh":88, "Mohammad":60}
puts group_by_marks(marks, 30).to_s
