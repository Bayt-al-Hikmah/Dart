class Robot {
  final String id;
  int x;
  int y;
  String orientation;
  int step;
  Robot(this.id, this.x, this.y, this.orientation, [this.step = 1]);

  void turnClockWise() {
    switch (orientation) {
      case 'North':
        orientation = 'East';
        break;
      case 'East':
        orientation = 'South';
        break;
      case 'South':
        orientation = 'West';
        break;
      case 'West':
        orientation = 'North';
        break;
      default:
        throw ArgumentError('Invalid orientation');
    }
  }

  void turnAntiClockWise() {
    switch (orientation) {
      case 'North':
        orientation = 'West';
        break;
      case 'West':
        orientation = 'South';
        break;
      case 'South':
        orientation = 'East';
        break;
      case 'East':
        orientation = 'North';
        break;
      default:
        throw ArgumentError('Invalid orientation');
    }
  }
  void walk() {
    switch (orientation) {
      case 'North':
        y += step;
        break;
      case 'East':
        x += step;
        break;
      case 'South':
        y -= step;
        break;
      case 'West':
        x -= step;
        break;
      default:
        throw ArgumentError('Invalid orientation');
    }
  }

  void getPosition() {
    print('Robot $id is at ($x, $y) facing $orientation');
  }
}

class AdvancedRobot extends Robot {
  int charge;
  bool turboState = false;
  AdvancedRobot(super.id,super.x,super.y,super.orientation,this.charge);

  void turbo() {
    if (charge > 0) {
      turboState = true;
      print('Turbo mode activated!');
    } else {
      print('Not enough charge for turbo mode');
    }
  }

  @override
  void walk() {
    if (turboState) {
      if (charge > 0) {
        step = 2;
        charge--;
        print('Walking in turbo mode! Charge remaining: $charge');
      } else {
        step = 1;
        turboState = false;
        print('Charge depleted. Turbo mode deactivated.');
      }
    }
    super.walk();
  }
}

void main() {
  print('Testing basic robot:');
  var basicRobot = Robot('R2D2', 0, 0, 'North');
  basicRobot.getPosition();
  basicRobot.walk();
  basicRobot.getPosition();
  basicRobot.turnClockWise();
  basicRobot.walk();
  basicRobot.getPosition();
  basicRobot.turnAntiClockWise();
  basicRobot.walk();
  basicRobot.getPosition();

  print('\nTesting advanced robot:');
  var advancedRobot = AdvancedRobot('C3PO', 0, 0, 'East', 3);
  advancedRobot.getPosition();
  advancedRobot.walk();
  advancedRobot.getPosition();
  advancedRobot.turbo();
  advancedRobot.walk();
  advancedRobot.getPosition();
  advancedRobot.walk();
  advancedRobot.getPosition();
  advancedRobot.walk(); 
  advancedRobot.getPosition();
  advancedRobot.turbo();
}