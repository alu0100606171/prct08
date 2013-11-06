require "./lib/matrix.rb"


describe Matrix do
  
  before :each do
    @f1 = Matrix.new([[1,2],[3,4]])
  end
  
  describe "La matriz se genera correctamente" do
    it "La matriz tiene formato correcto" do
      f = Matrix.new([[1,2],[3]]).should raise_error
      f_2 = Matrix.new([[1,2],[3,4]]).should_not raise_error
    end
  end
  
  describe "Almacenamiento de nº de filas y columnas" do
    it "El numero de filas es correcto" do
      @f1.filas.should eq(2)
    end
    it "El numero de columnas es correcto" do
      @f1.columnas.should eq(2)
    end
  end
  
 describe "Igualdad entre matrices" do
  it "Las matrices han de ser iguales" do
    f = Matrix.new([[1,2],[3,4],[5,6]])
    (@f1 == f).should be_true
  end
end

 describe "Transformacion de una matriz" do
  it "Matriz traspuesta" do
    f = Matrix.new([[1,3,5],[2,4,6]])
    (@f1.traspuesta == f).should be_true
  end
end

  describe "Operaciones con dos matrices" do
    it "La suma de matrices se realiza correctamente" do
      f = Matrix.new([[1,1],[2,2]])
      (@f1 + f).should eq (Matrix.new([[2,3],[5,6]]))
    end
  end

end

