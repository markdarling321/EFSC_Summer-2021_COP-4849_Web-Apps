// NAME:	Mark Darling
// CLASS:	COP-4849-01Z
// DATE:	07/07/21
// PROGRAM:	Java Project 5  --  shopping program

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// IMPORTS
import java.io.*;
import java.util.*;

public class Main {

    // DEFINE CLASS VARIABLES...
    private static final String IN_FILE = "ProductFile.txt";

    // CREATE ArrayList REFERENCE OF DATATYPE Inventory
    private static ArrayList<Inventory> inventory = new ArrayList<Inventory>();

    // CREATE ArrayList REFERENCE OF DATATYPE CustomerPurchases
    private static ArrayList<CustomerPurchases> customerPurchases = new ArrayList<CustomerPurchases>();

    // DEFINE CUSTOM DATATYPE CLASSES...
    private static class Inventory {

        // INSTANCE VARIABLES OF Inventory CLASS
        int productCode;
        int quantityInStock;
        String productDescription;
        double productPrice;

        // CONSTRUCTOR
        public Inventory(int productCode, int quantityInStock, String productDescription, double productPrice) {
            //super();
            this.productCode = productCode;
            this.quantityInStock = quantityInStock;
            this.productDescription = productDescription;
            this.productPrice = productPrice;
        }
    }// END Inventory{}

    private static class CustomerPurchases {

        // INSTANCE VARIABLES OF CustomerPurchases CLASS
        int memberId;
        int productNumber;
        int quantityPurchased;

        // CONSTRUCTOR
        public CustomerPurchases(int memberId, int productNumber, int quantityPurchased) {
            //super();
            this.memberId = memberId;
            this.productNumber = productNumber;
            this.quantityPurchased = quantityPurchased;
        }
    }// END CustomerPurchases{}

    // PROGRAM START / CORE LOGIC...
    public static void main(String[] args) {

        // LOAD INVENTORY BY READING INPUT FILE
        loadInventory();

        // PRESENT MAIN MENU AND WAIT FOR INPUT
        while (mainMenu());

    }// END main()

    // CORE METHODS...
    private static void loadInventory() {

        // CREATE INPUT STREAM OBJECT
        Scanner inStream = null;

        // ATTEMPT TO OPEN THE FILE FOR READING
        try {
            inStream = new Scanner(new File(IN_FILE));

        }
        // HANDLE EXCEPTIONS
        catch (FileNotFoundException fnfe) {

            System.out.println("ERROR!  --  " + IN_FILE + " DOES NOT EXIST!");
        }

        // READ FILE CONTENTS
        while (inStream.hasNextLine()) {

            // GET NEXT LINE OF DATA
            String line = inStream.nextLine();

            // PARSE LINE OF DATA INTO ARRAY OF DATA POINTS
            String[] dataPoints = line.split(":");

            // PARSE & STORE DATA POINTS IN TEMPORARY LOCAL VARIABLES
            int productCode = Integer.parseInt(dataPoints[0]);
            int quantityInStock = Integer.parseInt(dataPoints[1]);
            String productDescription = dataPoints[2];
            double productPrice = Double.parseDouble(dataPoints[3]);

            // PUSH DATA POINTS TO INVENTORY
            inventory.add(new Inventory(productCode, quantityInStock, productDescription, productPrice));
        }
    }// END loadInventory()

    private static boolean mainMenu() {

        try {
            System.out.println("[1] Make Purchases");
            System.out.println("[2] Display Product Inventory");
            System.out.println("[3] Display Customer Purchases");
            System.out.println("[4] Display All Purchases");
            System.out.println("[5] Exit");

            // CREATE NEW INPUT STREAM OBJECT
            Scanner input = new Scanner(System.in);

            // TAKE INPUT FROM USER
            int choice = input.nextInt();

            switch (choice) {
                case 1:
                    makePurchases();
                    return true;
                case 2:
                    displayProductInventory();
                    return true;
                case 3:
                    displayCustomerPurchases();
                    return true;
                case 4:
                    displayAllPurchases();
                    return true;
                case 5:
                    return false;
                default:
                    return mainMenu();
            }// END switch()
        }
        // HANDLE INVALID MENU CHOICES
        catch (Exception e) {

            return mainMenu();
        }
    }// END mainMenu()

    private static void makePurchases() {

        // CREATE INPUT OBJECT REFERENCE
        Scanner userInput = new Scanner(System.in);

        // QUERY USER FOR MEMBER ID
        System.out.println("ENTER MEMBER ID: ");
        int memberId = userInput.nextInt();

        // DECLARE LOCAL VARIABLES
        int productNumber = 0;
        int quantityRequested = 0;
        int quantityPurchased = 0;
        do {    // RUN LOOP AT LEAST ONCE

            // CONSUME DATA FROM USER
            System.out.print("PRODUCT NUMBER: ");
            productNumber = userInput.nextInt();

            System.out.print("QUANTITY: ");
            quantityRequested = userInput.nextInt();

            // UPDATE INVENTORY...

            // VALIDATE, CONFIRM, & LOCATE PRODUCT LOCATED IN INVENTORY
            boolean validProductNumber = false;
            boolean validQuantityRequested = false;
            boolean validQuantityInStock = false;

            // ITERATE OVER EACH ArrayList<Inventory> REFERENCE CONTAINED WITHIN THE LIST
            for (Inventory item : inventory) {

                // EXAMINE EACH REFERENCE'S CONTENTS ONE AT A TIME...

                // DETERMINE IF PRODUCT FOUND
                if (item.productCode == productNumber)
                    validProductNumber = true;

                // DETERMINE IF CUSTOMER IS PURCHASING VALID QUANTITY OF SPECIFIC PRODUCT
                if (item.productCode == productNumber && item.quantityInStock >= quantityRequested)
                    validQuantityRequested = true;

                // DETERMINE IF REQUESTED PRODUCT IS IN STOCK
                if (item.quantityInStock >= 0)
                    validQuantityInStock = true;

                // IF ALL CONDITIONS ARE MET, CUSTOMER CAN PURCHASE PRODUCT AND INVENTORY MUST BE UPDATED
                if (validProductNumber && validQuantityRequested && validQuantityInStock) {

                    item.quantityInStock = item.quantityInStock - quantityRequested;
                    quantityPurchased = quantityRequested;

                    // UPDATE CUSTOMER PURCHASES...

                    // CREATE NEW TRANSACTION
                    customerPurchases.add(new CustomerPurchases(memberId, productNumber, quantityPurchased));
                    break;
                }
            }

        }while (productNumber != -1 && quantityPurchased != 1);

    }// END makePurchases()

    private static void displayProductInventory() {

        // LOCAL VARIABLES
        double totalProductValue = 0.00;
        double grandTotal = 0.00;

        // DISPLAY TABLE HEADINGS
        System.out.println("PRODUCT CODE\tQUANTITY IN STOCK\tPRODUCT DESCRIPTION\t\t\t\tPRODUCT PRICE\t\tPRODUCT VALUE\t\tGRAND TOTAL VALUE\n");

        // ITERATE OVER EACH ArrayList<Inventory> REFERENCE CONTAINED WITHIN THE LIST
        for (Inventory item : inventory) {

            // TALLY TOTAL VALUE OF EACH PRODUCT ON HAND (BASED ON PRICE & QTY)
            totalProductValue = item.quantityInStock * item.productPrice;

            // ACCUMULATE GRAND TOTAL VALUE OF ALL PRODUCTS
            grandTotal = grandTotal + totalProductValue;

            // PRINT EACH OBJECT'S DATA FORMATTED INTO LEFT-ALIGNED COLUMNS
            System.out.format("%-15s %-19s %-31s %-19.2f %-19.2f %-17.2f \n",
                    item.productCode,
                    item.quantityInStock,
                    item.productDescription,
                    item.productPrice,
                    totalProductValue,
                    grandTotal
            );
        }
    }// END displayProductInventory()

    private static void displayCustomerPurchases() {

        // LOCAL VARIABLES
        double totalCost = 0.00;
        double grandTotal = 0.00;

        // CREATE INPUT OBJECT REFERENCE
        Scanner userInput = new Scanner(System.in);

        // QUERY USER FOR MEMBER ID
        System.out.println("ENTER MEMBER ID: ");
        int memberId = userInput.nextInt();

        // DISPLAY TABLE HEADINGS
        System.out.println("MEMBER ID\t\tPRODUCT NUMBER\t\tQUANTITY PURCHASED\t\tTOTAL COST\t\t\t\tGRAND TOTAL\n");

        // ITERATE OVER EACH ArrayList<CustomerPurchases> REFERENCE CONTAINED WITHIN THE LIST
        for (CustomerPurchases purchase : customerPurchases) {

            // ONLY DISPLAY THE PURCHASES OF THE MEMBER ID ENTERED BY USER
            if (purchase.memberId == memberId) {

                // TALLY TOTAL COST OF PRODUCTS PURCHASED
                totalCost = purchase.quantityPurchased * getPrice(purchase.productNumber);

                // ACCUMULATE GRAND TOTAL VALUE OF ALL PRODUCTS
                grandTotal = grandTotal + totalCost;

                // PRINT EACH OBJECT'S DATA
                System.out.format("%-15s %-19s %-23s %-23.2f %-15.2f \n",
                        purchase.memberId,
                        purchase.productNumber,
                        purchase.quantityPurchased,
                        totalCost,
                        grandTotal
                );
            }
        }
    }// END displayCustomerPurchases()

    private static void displayAllPurchases() {

        // LOCAL VARIABLES
        double totalCost = 0.00;
        double grandTotal = 0.00;

        // DISPLAY TABLE HEADINGS
        System.out.println("MEMBER ID\t\tPRODUCT NUMBER\t\tQUANTITY PURCHASED\t\tTOTAL COST\t\t\t\tGRAND TOTAL\n");

        // ITERATE OVER EACH ArrayList<CustomerPurchases> REFERENCE CONTAINED WITHIN THE LIST
        for (CustomerPurchases purchase : customerPurchases) {

            // TALLY TOTAL COST OF PRODUCTS PURCHASED
            totalCost = purchase.quantityPurchased * getPrice(purchase.productNumber);

            // ACCUMULATE GRAND TOTAL VALUE OF ALL PRODUCTS
            grandTotal = grandTotal + totalCost;

            // PRINT EACH OBJECT'S DATA
            System.out.format("%-15s %-19s %-23s %-23.2f %-15.2f \n",
                    purchase.memberId,
                    purchase.productNumber,
                    purchase.quantityPurchased,
                    totalCost,
                    grandTotal
            );
        }
    }// END displayAllPurchases()

    private static double getPrice(int productNumber) {

        // LOCAL VARIABLES
        double price = 0.00;

        // ITERATE OVER EACH ArrayList<Inventory> REFERENCE CONTAINED WITHIN THE LIST
        for (Inventory item : inventory) {

            // FOR EACH OBJECT WHOSE CONTENTS WE ARE EXAMINING
            // CHECK IF ITS PRODUCT NUMBER IS THE ONE WE ARE SEARCHING FOR
            if (item.productCode == productNumber) {

                // ONCE FOUND, NOTE THE PRICE AND STOP SEARCHING
                price = item.productPrice;
                break;
            }
        }

        return price;

    }// END getPrice()

}// END Main{}