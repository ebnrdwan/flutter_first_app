package com.yourcompany.flutter_first_app;

public class headless {
}

/*
*
* public class ExampleActivity extends AppCompatActivity {
private ExampleActivityStateFragment mStateFragment;
@Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        FragmentManager fm = getSupportFragmentManager();
        mStateFragment = (ExampleActivityStateFragment) fm.findFragmentByTag(KEY_STATE_FRAGMENT);
        if (mStateFragment == null) {
            mStateFragment = new ExampleActivityStateFragment();
            fm.beginTransaction().add(mStateFragment, KEY_STATE_FRAGMENT).commit();
        }
    }
}
* */



/*
* setup fragment to do the work
*
* public static class ExampleActivityStateFragment extends Fragment {
private static final String TAG = "custom_activity_state";
// This is where we store the data we need to be retained
private List<String> mList;
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setRetainInstance(true);
    }

}
*/



/*

 /// how we call this in fragment to handle business
        FragmentManager fm = getSupportFragmentManager();
        mStateFragment = (ExampleActivityStateFragment) fm.findFragmentByTag(KEY_STATE_FRAGMENT);
        if (mStateFragment == null) {
            mStateFragment = new ExampleActivityStateFragment();
            fm.beginTransaction().add(mStateFragment, KEY_STATE_FRAGMENT).commit();*/



/* how to get data
*  protected void getData() {
        if (mStateFragment.mList == null) {
            mStateFragment.mList = getListOfStrings();
        }
    }*/