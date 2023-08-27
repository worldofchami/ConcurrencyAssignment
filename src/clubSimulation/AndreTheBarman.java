package clubSimulation;

public class AndreTheBarman extends Clubgoer {
    public AndreTheBarman(int ID, PeopleLocation loc, int speed) throws InterruptedException {
        super(ID, loc, speed);
        inRoom = true;
        this.myLocation.setInRoom(true);
        currentBlock = new GridBlock(0, 3 ,false, true, false);
    }

    private void tend() throws InterruptedException {
        currentBlock = club.move(currentBlock, this.getX() + 1, 0, myLocation);
        sleep(500);
    }

    @Override
    public void run() {
        try {
            while(true) {
                startSim();
                tend();
            }
        }

        catch (Exception exception) {
            System.out.println(exception.toString());
        }
    }
}
