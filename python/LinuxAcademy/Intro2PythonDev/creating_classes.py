class Car:
    """
    Car models a car with tires and an engine
    """

    def __init__(self, engine, tires):
        self.engine = engine
        self.tires = tires
        """
        Docstring describing the method
        """

    def description(self):
        print(f"A car with an {self.engine} engine and {self.tires}")

    def wheel_circumference(self):
        if len(self.tires) > 0:
            return self.tires[0].circumference()
        else:
            return 0










